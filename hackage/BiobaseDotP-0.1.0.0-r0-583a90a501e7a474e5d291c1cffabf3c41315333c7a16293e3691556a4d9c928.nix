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
      specVersion = "1.4";
      identifier = { name = "BiobaseDotP"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Vienna / DotBracket / ExtSS parsers";
      description = "Parsers for Vienna dot-bracket like formats. Includes parsing\ntwo-line RNAfold output, RNAstrand dot-bracket notation and the\nRNAwolf extended RNA secondary structure notation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
        ];
        buildable = true;
      };
    };
  }