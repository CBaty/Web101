package com.sopra.dev;

import javax.servlet.http.Cookie;

public class CookiesHelper {

	public static Cookie getCookie(Cookie[] cookies, String name){
		if( cookies != null){
			for(Cookie cookie : cookies){
				if (cookie.getName().equals(name))
					return cookie;
			}
		}
		return null;
	}
}
