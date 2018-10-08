package com.ict.book.vo;

public class LibraryInfo {

	private Integer lino;
 	private Integer liprice;
	private String liname;
	private String lidesc;
	private String lidate;
	private String lipublisher;
	private String liwriter;
	private String liimg;
	private String libook;
	private String listar;
	
	public LibraryInfo() {}

	public LibraryInfo(Integer lino, Integer liprice, String liname, String lidesc, String lidate, String lipublisher,
			String liwriter, String liimg, String libook, String listar) {
		super();
		this.lino = lino;
		this.liprice = liprice;
		this.liname = liname;
		this.lidesc = lidesc;
		this.lidate = lidate;
		this.lipublisher = lipublisher;
		this.liwriter = liwriter;
		this.liimg = liimg;
		this.libook = libook;
		this.listar = listar;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "LibraryInfo [lino=" + lino + ", liprice=" + liprice + ", liname=" + liname + ", lidesc=" + lidesc
				+ ", lidate=" + lidate + ", lipublisher=" + lipublisher + ", liwriter=" + liwriter + ", liimg=" + liimg
				+ ", libook=" + libook + ", listar=" + listar + "]";
	}

	/**
	 * @return the lino
	 */
	public Integer getLino() {
		return lino;
	}

	/**
	 * @param lino the lino to set
	 */
	public void setLino(Integer lino) {
		this.lino = lino;
	}

	/**
	 * @return the liprice
	 */
	public Integer getLiprice() {
		return liprice;
	}

	/**
	 * @param liprice the liprice to set
	 */
	public void setLiprice(Integer liprice) {
		this.liprice = liprice;
	}

	/**
	 * @return the liname
	 */
	public String getLiname() {
		return liname;
	}

	/**
	 * @param liname the liname to set
	 */
	public void setLiname(String liname) {
		this.liname = liname;
	}

	/**
	 * @return the lidesc
	 */
	public String getLidesc() {
		return lidesc;
	}

	/**
	 * @param lidesc the lidesc to set
	 */
	public void setLidesc(String lidesc) {
		this.lidesc = lidesc;
	}

	/**
	 * @return the lidate
	 */
	public String getLidate() {
		return lidate;
	}

	/**
	 * @param lidate the lidate to set
	 */
	public void setLidate(String lidate) {
		this.lidate = lidate;
	}

	/**
	 * @return the lipublisher
	 */
	public String getLipublisher() {
		return lipublisher;
	}

	/**
	 * @param lipublisher the lipublisher to set
	 */
	public void setLipublisher(String lipublisher) {
		this.lipublisher = lipublisher;
	}

	/**
	 * @return the liwriter
	 */
	public String getLiwriter() {
		return liwriter;
	}

	/**
	 * @param liwriter the liwriter to set
	 */
	public void setLiwriter(String liwriter) {
		this.liwriter = liwriter;
	}

	/**
	 * @return the liimg
	 */
	public String getLiimg() {
		return liimg;
	}

	/**
	 * @param liimg the liimg to set
	 */
	public void setLiimg(String liimg) {
		this.liimg = liimg;
	}

	/**
	 * @return the libook
	 */
	public String getLibook() {
		return libook;
	}

	/**
	 * @param libook the libook to set
	 */
	public void setLibook(String libook) {
		this.libook = libook;
	}

	/**
	 * @return the listar
	 */
	public String getListar() {
		return listar;
	}

	/**
	 * @param listar the listar to set
	 */
	public void setListar(String listar) {
		this.listar = listar;
	};
	
	
	
}
