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
    flags = { rely-on-shared-lpeg-library = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "lpeg"; version = "1.1.0"; };
      license = "MIT";
      copyright = "© 2007-2019 Lua.org, PUC-Rio;\n© 2021-2023 Albert Krewinkel";
      maintainer = "Albert Krewinkel <tarleb@hslua.org>";
      author = "Albert Krewinkel";
      homepage = "https://hslua.org/";
      url = "";
      synopsis = "LPeg – Parsing Expression Grammars For Lua";
      description = "This package contains the C sources of LPeg, as well\nas some tiny Haskell helper to load the package.\n\n<http://www.inf.puc-rio.br/~roberto/lpeg/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lua" or (errorHandler.buildDepError "lua"))
          ];
        buildable = true;
        };
      tests = {
        "test-lpeg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lua" or (errorHandler.buildDepError "lua"))
            (hsPkgs."lpeg" or (errorHandler.buildDepError "lpeg"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }