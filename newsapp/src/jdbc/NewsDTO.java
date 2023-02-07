package jdbc;

public class NewsDTO {
	private String nid;
	private String uau;
	private String nca;
	private String nsj;
	private String nct;
	private String nlk;
	private String npu;
	private String nda;
	public String getNid() {
		return nid;
	}
	public void setNid(String nid) {
		this.nid = nid;
	}
	public String getUau() {
		return uau;
	}
	public void setUau(String uau) {
		this.uau = uau;
	}
	public String getNca() {
		return nca;
	}
	public void setNca(String nca) {
		this.nca = nca;
	}
	public String getNsj() {
		return nsj;
	}
	public void setNsj(String nsj) {
		this.nsj = nsj;
	}
	public String getNct() {
		return nct;
	}
	public void setNct(String nct) {
		this.nct = nct;
	}
	public String getNlk() {
		return nlk;
	}
	public void setNlk(String nlk) {
		this.nlk = nlk;
	}
	public String getNpu() {
		return npu;
	}
	public void setNpu(String npu) {
		this.npu = npu;
	}
	public String getNda() {
		return nda;
	}
	public void setNda(String nda) {
		this.nda = nda;
	}
	public NewsDTO(String nid, String uau, String nca, String nsj, String nct, String nlk, String npu, String nda) {
		super();
		this.nid = nid;
		this.uau = uau;
		this.nca = nca;
		this.nsj = nsj;
		this.nct = nct;
		this.nlk = nlk;
		this.npu = npu;
		this.nda = nda;
	}

	public NewsDTO() {
		
	}
}
