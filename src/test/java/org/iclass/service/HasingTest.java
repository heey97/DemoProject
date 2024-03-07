package org.iclass.service;

import static org.junit.jupiter.api.Assertions.*;

import java.security.NoSuchAlgorithmException;

import org.junit.jupiter.api.Test;

import lombok.extern.slf4j.Slf4j;
@Slf4j
class HasingTest {

	@Test
	void test() {
		MemberService service = new MemberService();
		try {
			String hashvalue = service.encrypt("1111");
			log.info("1111해시 값 : {}",hashvalue);
			hashvalue = service.encrypt("thGH123!@4");
			log.info("thGH123!@4해시 값 : {}",hashvalue);
			hashvalue = service.encrypt("toslr1203!");
			log.info("1111해시 값 : {}",hashvalue);
		} catch (NoSuchAlgorithmException e) {
			System.out.println(e.getMessage());
		}
		
	}

}
