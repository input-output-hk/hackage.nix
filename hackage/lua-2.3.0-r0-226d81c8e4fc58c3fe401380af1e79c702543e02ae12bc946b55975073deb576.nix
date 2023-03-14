{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      system-lua = false;
      apicheck = false;
      lua_32bits = false;
      allow-unsafe-gc = true;
      export-dynamic = true;
      pkg-config = false;
      cross-compile = false;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "lua"; version = "2.3.0"; };
      license = "MIT";
      copyright = "© 2007–2012 Gracjan Polak;\n© 2012–2016 Ömer Sinan Ağacan;\n© 2017-2023 Albert Krewinkel";
      maintainer = "Albert Krewinkel <tarleb@hslua.org>";
      author = "Albert Krewinkel";
      homepage = "https://hslua.org/";
      url = "";
      synopsis = "Lua, an embeddable scripting language";
      description = "This package provides bindings and types to bridge\nHaskell and <https://www.lua.org/ Lua>.\n\nThe full Lua interpreter version 5.4.4 is included.\nAlternatively, a system-wide Lua installation can be\nlinked instead.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = (pkgs.lib).optionals (flags.system-lua || flags.pkg-config) ((pkgs.lib).optional (!flags.pkg-config) (pkgs."lua" or (errorHandler.sysDepError "lua")));
        pkgconfig = (pkgs.lib).optionals (flags.system-lua || flags.pkg-config) ((pkgs.lib).optional (flags.pkg-config) (pkgconfPkgs."lua5.4" or (errorHandler.pkgConfDepError "lua5.4")));
        buildable = true;
        };
      tests = {
        "test-lua" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lua" or (errorHandler.buildDepError "lua"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }