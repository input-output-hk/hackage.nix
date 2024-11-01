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
      identifier = { name = "sloane"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anders.claesson@gmail.com";
      author = "Anders Claesson";
      homepage = "http://github.com/akc/sloane";
      url = "";
      synopsis = "A command line interface to Sloane's On-Line Encyclopedia of Integer Sequences";
      description = "A command line interface to Sloane's On-Line Encyclopedia of Integer Sequences.\nFor usage see <http://github.com/akc/sloane>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sloane" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."url" or (errorHandler.buildDepError "url"))
          ];
          buildable = true;
        };
      };
    };
  }