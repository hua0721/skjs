package cn.hua.dao.impl;

import static org.junit.Assert.*;

import org.junit.Test;

import cn.hua.dao.OtherDao;

public class OtherDaoImplTest {

	@Test
	public void test() {
		OtherDao dao = new OtherDaoImpl();
		dao.findUserMoreData("2b5fd4d656d65b7c0156d69377a10003");
	}

}
