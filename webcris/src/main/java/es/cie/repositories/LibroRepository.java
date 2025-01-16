package es.cie.repositories;

import java.util.List;

import es.cie.negocio.Libro;

public interface LibroRepository {

	List<Libro> buscarTodos();

	List<Libro> buscarPorTitulo(String titulo);

	List<Libro> buscarPorAutor(String autor);

}