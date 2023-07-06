using System.Data.SqlClient;
using Dapper;

public static class BD
{

    private static string _ConnectionString = @"Server=localhost; DataBase=NombreBase; Trusted_Connection=True;";

    public static void AgregarCandidato(Candidato can)
    {
        string SQL = "INSERT INTO Candidato (IdPartido, Apellido, Nombre, FechaNacimiento, Foto, Postulacion) VALUES (@pIdPartido, @pApellido, @pNombre, @pFechaNacimiento, @pFoto, @pPostulacion)";
        using (SqlConnection db = new SqlConnection(_ConnectionString))
        {
            db.Execute(SQL, new {pIdPartido = can.IdPartido, pApellido = can.Apellido, pNombre = can.Nombre, pFechaNacimiento = can.FechaNacimiento, pFoto = can.Foto, pPostulacion = can.Postulacion});
        }
    }

    public static int EliminarCandidato(int idCandidato)
    {
       int RegistrosEliminados = 0;
       string sql = "DELETE FROM Candidato WHERE IdCandidato = @IdCandidato";
       using (SqlConnection db = new SqlConnection(_ConnectionString))
       {
            RegistrosEliminados = db.Execute(sql, new {IdCandidato = idCandidato});        
       }
       return RegistrosEliminados;
    }

    public static Partido VerInfoPartido(int idPartido)
    {
        Partido MiPartido = null;
        using (SqlConnection db = new SqlConnection(_ConnectionString))
        {
            string sql = "SELECT * FROM Partido WHERE IdPartido = @pIdPartido";
            MiPartido = db.QueryFirstOrDefault<Partido>(sql, new { pIdPartido = idPartido});
        }
        return MiPartido;
    }

    public static Candidato VerInfoCandidato(int idCandidato)
    {
        Candidato MiCandidato = null;
        using (SqlConnection db = new SqlConnection(_ConnectionString))
        {
            string sql = "Select * FROM Candidato WHERE IdCandidato = @pIdCandidato";
            MiCandidato = db.QueryFirstOrDefault<Candidato>(sql, new { pIdCandidato = idCandidato});
        }
        return MiCandidato;
    }

    private static List<Partido> _ListadoPartidos = new List<Partido>();

    public static List<Partido> ListarPartidos()
    {
        using (SqlConnection db = new SqlConnection(_ConnectionString))
        {
            string sql = "SELECT * FROM Partido";
            _ListadoPartidos = db.Query<Partido>(sql).ToList();
        }
        return _ListadoPartidos;
    } 

    private static List<Candidato> _ListadoCandidatos = new List<Candidato>();
    public static List<Candidato> ListarCandidatos(int idPartido)
    {
        using (SqlConnection db = new SqlConnection(_ConnectionString))
        {
            string sql = "SELECT * FROM Candidato WHERE IdPartido = @pIdPartido";
            _ListadoCandidatos = db.Query<Candidato>(sql, new { pIdPartido = idPartido}).ToList();
        }
        return _ListadoCandidatos;
    }

}





    