package polymorphism;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component("tv")
public class LgTV implements TV{
/*	
	@Autowired // 주로 변수 위에 설정하여 해당 타입의 객체를 찾아서 자동으로 할당.
	@Qualifier("sony") // @Autowired의 대상이 되는 객체가 두개 이상일 때의 문제를 해결하기 위함.
*/	
	/*@Resource(name="apple")*/
	
	@Autowired
	private Speaker speaker;
	
	public LgTV() {
		System.out.println("===> LgTV 객체 생성");
	}
	public void powerOn() {
		System.out.println("LgTV --- 전원 켠다.");
	}
	
	public void powerOff() {
		System.out.println("LgTV --- 전원 끈다. ");
	}
	
	public void volumeUp() {
		speaker.volumeUp();
	}
	
	public void volumeDown() {
		speaker.volumeDown();
	}

}
