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

        return View("VerDetalleCandidato",candidato);
    }

    public IActionResult AgregarCandidato(int idPartido)
    {
        ViewBag.IdPartido = idPartido;
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }

    [HttpPost] public IActionResult GuardarCandidato(Candidato can)
    {
        BD.AgregarCandidato(can);
        return RedirectToAction("VerDetallePartido", new {idPartido = can.IdPartido});
    }


    public IActionResult EliminarCandidato(int idCandidato, int idPartido)
    {
        BD.EliminarCandidato(idCandidato);

        Partido partido = BD.VerInfoPartido(idPartido);
        List<Candidato> candidatos = BD.ListarCandidatos(idPartido);

        ViewBag.Partido = partido;
        ViewBag.Candidatos = candidatos;

        return View("VerDetallePartido");
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
