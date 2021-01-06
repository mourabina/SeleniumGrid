package configuration;

import commons.BaseTest;
import io.cucumber.java.After;

public class Hooks extends BaseTest {

	

	@After
	public void tearDown() {
		killwebDriver();
	}

}
