package cn.hua.utils;

import org.junit.Test;

import cn.hua.formBean.UserRegister;
import cn.hua.model.User;

public class ConversionTest {

	@Test
	public void test() {
		Conversion<User, UserRegister> conversion = new Conversion<User,UserRegister>();
		UserRegister userRegister = new UserRegister();
		userRegister.setUsername("小雪");
		User user = conversion.beanToBean(new User(), userRegister);
		System.out.println(user.getUsername());
		
	}

}
