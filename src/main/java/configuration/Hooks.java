package configuration;

import commons.BaseTest;
import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Hooks extends BaseTest {
	
	@Before
	public void setUp() {
		/*try {
			VideoRecorder_utlity.startRecord("Incio dos Testes");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	}
	
	
	

	@After
	public void tearDown() {
		killwebDriver();
		
	}

}
