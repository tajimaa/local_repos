package beans;

import java.io.Serializable;

public class ResultBean implements Serializable {
	double cm180 = 0.0;
	double cm360 = 0.0;

	public double getCm180() {
		return cm180;
	}

	public void setCm180(double cm180) {
		this.cm180 = cm180;
	}

	public double getCm360() {
		return cm360;
	}

	public void setCm360(double cm360) {
		this.cm360 = cm360;
	}

}
