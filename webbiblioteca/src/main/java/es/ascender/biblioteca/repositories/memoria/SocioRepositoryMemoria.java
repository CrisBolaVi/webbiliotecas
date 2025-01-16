package es.ascender.biblioteca.repositories.memoria;

import java.util.ArrayList;
import java.util.List;

import es.ascender.biblioteca.negocio.Socio;
import es.ascender.biblioteca.repositories.SocioRepository;

//este paquete es para organizar, porque tenemos muchos puntos de accesibilidad
public class SocioRepositoryMemoria implements SocioRepository{

	@Override
	public List<Socio> buscarTodos() {
		List<Socio> lista= new ArrayList<Socio>();
		lista.add(new Socio("1","maria","sanchez"));
		lista.add(new Socio("2","juan","perez"));
		return lista;
	}




}
