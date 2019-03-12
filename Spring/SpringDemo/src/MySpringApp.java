import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
public class MySpringApp
{

	public static void main(String[] args)
	{
		// TODO Auto-generated method stub
		Resource resource=new ClassPathResource("SpringConfig.xml");  
    	BeanFactory factory=new XmlBeanFactory(resource);  
      
    	com.Employee employee=(com.Employee)factory.getBean("empbean");
	
    	employee.display();
	
	}

}
