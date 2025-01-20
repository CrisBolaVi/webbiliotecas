package es.ascender.biblioteca.negocio;

public class Direccion {

	private String dni;
	private String calle;
	private int numero;
	private int codigo;

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getCalle() {
		return calle;
	}

	public void setCalle(String calle) {
		this.calle = calle;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public Direccion(String dni) {
		super();
		this.dni = dni;
	}

	public Direccion(String dni, String calle, int numero, int codigo) {
		super();
		this.dni = dni;
		this.calle = calle;
		this.numero = numero;
		this.codigo = codigo;
	}

	public Direccion(String calle, int numero) {
		super();
		this.calle = calle;
		this.numero = numero;
	}

	public Direccion() {
		super();
	}

}
