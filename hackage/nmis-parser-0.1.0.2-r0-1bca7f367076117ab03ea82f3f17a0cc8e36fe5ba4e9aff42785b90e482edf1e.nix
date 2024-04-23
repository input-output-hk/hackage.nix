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
      identifier = { name = "nmis-parser"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Sasa Bogicevic";
      maintainer = "t4nt0r@pm.me";
      author = "Sasa Bogicevic";
      homepage = "https://github.com/v0d1ch/nmis-parser#readme";
      url = "";
      synopsis = "NMIS file parser";
      description = "Parser for __NMIS__ (Network Management Information System) files to record type. Main module to use is __Text.Nmis__ and __parseNmis__ function";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
        ];
        buildable = true;
      };
      tests = {
        "nmis-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Nmis" or (errorHandler.buildDepError "Nmis"))
          ];
          buildable = true;
        };
      };
    };
  }