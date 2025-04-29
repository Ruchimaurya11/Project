package model;

public class Plan {
	private int pid,wp_id,noofguest;
	private String budget,style,venue,photovideos,noofguestfortransport;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getwp_id() {
		return wp_id;
	}
	public void setwp_id(int wp_id) {
		this.wp_id = wp_id;
	}
	public int getNoofguest() {
		return noofguest;
	}
	public void setNoofguest(int noofguest) {
		this.noofguest = noofguest;
	}
	public String getBudget() {
		return budget;
	}
	public void setBudget(String budget) {
		this.budget = budget;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public String getPhotovideos() {
		return photovideos;
	}
	public void setPhotovideos(String photovideos) {
		this.photovideos = photovideos;
	}
	public String getNoofguestfortransport() {
		return noofguestfortransport;
	}
	public void setNoofguestfortransport(String noofguestfortransport) {
		this.noofguestfortransport = noofguestfortransport;
	}
	@Override
	public String toString() {
		return "Plan [pid=" + pid + ", wp_id=" + wp_id + ", noofguest=" + noofguest + ", budget=" + budget + ", style="
				+ style + ", venue=" + venue + ", photovideos=" + photovideos + ", noofguestfortransport="
				+ noofguestfortransport + "]";

	}
	
}
