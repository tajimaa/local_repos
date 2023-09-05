package dto;

public class SensiDto {
	String name = null;
	String game = null;
	String sensitivityb = null;
	double cm180 = 0.0;
	double cm360 = 0.0;
	
	//seter
	
    public void setName(String name) {
        this.name = name;
    }

    public void setGame(String game) {
        this.game = game;
    }

    public void setSensitivityb(String sensitivityb) {
        this.sensitivityb = sensitivityb;
    }

    public void setCm180(double cm180) {
        this.cm180 = cm180;
    }

    public void setCm360(double cm360) {
        this.cm360 = cm360;
    }

    //geter

    public String getName() {
        return name;
    }

    public String getGame() {
        return game;
    }

    public String getSensitivityb() {
        return sensitivityb;
    }

    public double getCm180() {
        return cm180;
    }

    public double getCm360() {
        return cm360;
    }
}
