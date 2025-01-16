package es.cie.repositories;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;

import es.cie.negocio.Libro;

public class LibroRepositoryMemoria implements LibroRepository {

	private static List<Libro> lista = new ArrayList<Libro>();

	static {

		lista.add(new Libro("1", "java", "pepe", 200));
		lista.add(new Libro("2", "php", "juan", 100));
		lista.add(new Libro("3", "java web", "miguel", 200));
		lista.add(new Libro("4", "java jdbc", "ana", 100));
		lista.add(new Libro("5", "java io", "maria", 200));
		lista.add(new Libro("6", "python", "gema", 100));
		lista.add(new Libro("7", "javascript", "antonio", 100));

	}

	@Override
	public List<Libro> buscarTodos() {

		return lista;
	}

	@Override
	public List<Libro> buscarPorTitulo(String titulo) {

		// este metodo genera una nueva lista
		// que contiene los libros cuyo titulo sea similar
		// al que pasamos

		List<Libro> listaNueva = new ArrayList<Libro>();

		for (Libro l : lista) {

			String tituloLibro = l.getTitulo();
			// titulo del libro
			if (tituloLibro.toLowerCase().contains(titulo.toLowerCase())) {

				listaNueva.add(l);
			}
		}
		return listaNueva;
	}

	@Override
	public List<Libro> buscarPorAutor(String autor) {

		// este metodo genera una nueva lista
		// que contiene los libros cuyo titulo sea similar
		// al que pasamos

		List<Libro> listaNueva = new ArrayList<Libro>();

		for (Libro l : lista) {

			String autorLibro = l.getAutor();
			if (autorLibro.toLowerCase().contains(autor.toLowerCase())) {

				listaNueva.add(l);
			}
		}
		return listaNueva;
	}
}
