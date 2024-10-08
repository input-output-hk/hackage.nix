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
      identifier = { name = "hackertyper"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Francesco Gazzetta <fgaz@fgaz.me>";
      author = "Francesco Gazzetta";
      homepage = "https://github.com/fgaz/hackertyper";
      url = "";
      synopsis = "\"Hack\" like a programmer in movies and games!";
      description = "Simply randomly mash your keyboard and code will display on your screen.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hackertyper" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }