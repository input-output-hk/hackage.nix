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
      specVersion = "1.6";
      identifier = { name = "regex-genex"; version = "0.1.20110523"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2011 Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "https://github.com/audreyt/regex-genex";
      url = "";
      synopsis = "From a regex, generate all possible strings it can match";
      description = "From a regex, generate all possible strings it can match";
      buildType = "Simple";
    };
    components = {
      exes = {
        "genex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."sbv" or (errorHandler.buildDepError "sbv"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          ];
          buildable = true;
        };
      };
    };
  }