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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yabi"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "fgaz@users.noreply.github.com";
      author = "Francesco Gazzetta";
      homepage = "https://github.com/fgaz/yabi";
      url = "";
      synopsis = "Yet Another Brainfuck Interpreter";
      description = "Yet Another Brainfuck Interpreter";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yabi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
            ];
          buildable = true;
          };
        };
      };
    }