using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Documents.Models;

namespace Documents.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        List<Partido> partidos = BD.ListarPartidos();
        ViewBag.Partidos = partidos;

        return View("Index",partidos);
    }

    public IActionResult VerDetallePartido(int idPartido)
    {
        Partido partido = BD.VerInfoPartido(idPartido);
        List<Candidato> candidatos = BD.ListarCandidatos(idPartido);

        ViewBag.Partido = partido;
        ViewBag.Candidatos = candidatos;

        return View("VerDetallePartido",partido);
    }

    public IActionResult VerDetalleCandidato(int idCandidato)
    {
        Candidato candidato = BD.VerInfoCandidato(idCandidato);

        ViewBag.Candidato = candidato;

        return View("VerDetalleCandidato");
    }

    public IActionResult AgregarCandidato(int idPartido)
    {
        ViewBag.IdPartido = idPartido;

        return View("AgregarCandidato");
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }

    [HttpPost]
public IActionResult GuardarCandidato(Candidato can)
{
    if (ModelState.IsValid) 
    {
        try
        {
            if (can != null && !string.IsNullOrEmpty(can.Nombre) && !string.IsNullOrEmpty(can.Apellido) && can.FechaNacimiento != default(DateTime) && !string.IsNullOrEmpty(can.Foto) && !string.IsNullOrEmpty(can.Postulacion))
            {
                BD.AgregarCandidato(can);

                Partido partido = BD.VerInfoPartido(can.IdPartido);
                List<Candidato> candidatos = BD.ListarCandidatos(can.IdPartido);

                ViewBag.Partido = partido;
                ViewBag.Candidatos = candidatos;

                return View("VerDetallePartido", new { idPartido = can.IdPartido });
            }
            else
            {
                // In case the model state is valid, but the candidate object properties are not valid, add a custom error message to the model state.
                ModelState.AddModelError(string.Empty, "All candidate fields are required and should have valid values.");
                return View("AgregarCandidato");
            }
        }
        catch (Exception ex)
        {
            // Log the exception for debugging purposes or handle it gracefully as per your application's requirements.
            _logger.LogError(ex, "Error while saving the candidate to the database.");

            // Add a custom error message to the model state to display an error message to the user.
            ModelState.AddModelError(string.Empty, "An error occurred while saving the candidate. Please try again later.");
            return View("AgregarCandidato");
        }
    }
    else
    {
        // In case the model state is invalid, display the validation errors to the user.
        return View("AgregarCandidato");
    }
}


    public IActionResult EliminarCandidato(int idCandidato, int idPartido)
    {
        BD.EliminarCandidato(idCandidato);

        Partido partido = BD.VerInfoPartido(idPartido);
        List<Candidato> candidatos = BD.ListarCandidatos(idPartido);

        ViewBag.Partido = partido;
        ViewBag.Candidatos = candidatos;

        return View("DetallePartido");
    }

    public IActionResult Elecciones()
    {
        return View("Elecciones");
    }

    public IActionResult Creditos()
    {
        return View("Creditos");
    }
}
