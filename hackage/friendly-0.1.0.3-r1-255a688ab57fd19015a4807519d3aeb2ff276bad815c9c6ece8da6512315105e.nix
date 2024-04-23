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
      identifier = { name = "friendly"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Edsko de Vries";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "Attempt to pretty-print any input";
      description = "The friendly executable copies standard input\nto standard output, attempting to pretty-print the\ninput without actually requiring that the input\nis well-formed in any way.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "friendly" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
    };
  }