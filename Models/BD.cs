public static class BD
{
    private static List<Candidato> candidatos = new List<Candidato>();
    public static void AgregarCandidato(Candidato can)
    {
        candidatos.Add(can);
    }

    public static void EliminarCandidato(int idCandidato)
    {
        Candidato candidato = candidatos.FirstOrDefault(c => c.IdCandidato == idCandidato);

        if(candidato != null)
        {
            candidatos.Remove(candidato);
        }
    }

    public static Partido VerInfoPartido(int idPartido)
    {
        foreach (Partido partido in partidos)
        {
            if (partido.IdPartido == idPartido)
            {
                return partido;
            }
        }

        return null;
    }

    public static Candidato VerInfoCandidato(int idCandidato)
    {
        foreach (Candidato candidato in candidatos)
        {
            if (candidato.IdCandidato == idCandidato)
            {
                return candidato;
            }
        }

        return null;
    }

    private static List<Partido> partidos = new List<Partido>();

    public static List<Partido> ListarPartidos()
    {
        return partidos;
    } 

    public static List<Candidato> ListarCandidatos(int idPartido)
    {
        List<Candidato> candidatosPartido = new List<Candidato>();

        foreach (Candidato candidato in candidatos)
        {
            if (candidato.IdPartido == idPartido)
            {
                candidatosPartido.Add(candidato);
            }
        }

        return candidatosPartido;
    }

}