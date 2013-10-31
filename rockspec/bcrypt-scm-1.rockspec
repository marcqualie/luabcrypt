package = "bcrypt"
version = "scm-1"

source = {
	url = "git://github.com/mikejsavage/lua-bcrypt.git",
}

description = {
	summary = "A Lua wrapper for bcrypt",
	homepage = "http://github.com/mikejsavage/lua-bcrypt",
	license = "MIT",
	maintainer = "Mike Savage",
}

dependencies = {
	"lua >= 5.1",
}

build = {
	type = "builtin",
	modules = {
		bcrypt = {
			sources = {
				"lib/bcrypt/crypt_blowfish.c",
				"lib/bcrypt/crypt_gensalt.c",
				"lib/bcrypt/wrapper.c",
				"src/main.c",
			},
			incdirs = {
				"lib/bcrypt/"
			}
		}
	}
}
