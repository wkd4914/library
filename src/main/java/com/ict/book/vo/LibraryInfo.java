package com.ict.book.vo;

import org.apache.ibatis.type.Alias;

@Alias("li")
public class LibraryInfo {

	private Integer lino;
 	private Integer liprice;
	private String liname;
	private String ligenre;
	private String lidate;
	private String lipublisher;
	private String liwriter;
	private String liwhere;
	private String liimg;
	private String libook;
	private String listar;
	
	public LibraryInfo() {}

	@Override
	public String toString() {
		return "LibraryInfo [lino=" + lino + ", liprice=" + liprice + ", liname=" + liname + ", ligenre=" + ligenre
				+ ", lidate=" + lidate + ", lipublisher=" + lipublisher + ", liwriter=" + liwriter + ", liwhere="
				+ liwhere + ", liimg=" + liimg + ", libook=" + libook + ", listar=" + listar + "]";
	}

	public LibraryInfo(Integer lino, Integer liprice, String liname, String ligenre, String lidate, String lipublisher,
			String liwriter, String liwhere, String liimg, String libook, String listar) {
		super();
		this.lino = lino;
		this.liprice = liprice;
		this.liname = liname;
		this.ligenre = ligenre;
		this.lidate = lidate;
		this.lipublisher = lipublisher;
		this.liwriter = liwriter;
		this.liwhere = liwhere;
		this.liimg = liimg;
		this.libook = libook;
		this.listar = listar;
	}

	public Integer getLino() {
		return lino;
	}

	public void setLino(Integer lino) {
		this.lino = lino;
	}

	public Integer getLiprice() {
		return liprice;
	}

	public void setLiprice(Integer liprice) {
		this.liprice = liprice;
	}

	public String getLiname() {
		return liname;
	}

	public void setLiname(String liname) {
		this.liname = liname;
	}

	public String getLigenre() {
		return ligenre;
	}

	public void setLigenre(String ligenre) {
		this.ligenre = ligenre;
	}

	public String getLidate() {
		return lidate;
	}

	public void setLidate(String lidate) {
		this.lidate = lidate;
	}

	public String getLipublisher() {
		return lipublisher;
	}

	public void setLipublisher(String lipublisher) {
		this.lipublisher = lipublisher;
	}

	public String getLiwriter() {
		return liwriter;
	}

	public void setLiwriter(String liwriter) {
		this.liwriter = liwriter;
	}

	public String getLiwhere() {
		return liwhere;
	}

	public void setLiwhere(String liwhere) {
		this.liwhere = liwhere;
	}

	public String getLiimg() {
		return liimg;
	}

	public void setLiimg(String liimg) {
		this.liimg = liimg;
	}

	public String getLibook() {
		return libook;
	}

	public void setLibook(String libook) {
		this.libook = libook;
	}

	public String getListar() {
		return listar;
	}

	public void setListar(String listar) {
		this.listar = listar;
	}

	
	
	
}
