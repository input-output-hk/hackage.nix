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
      identifier = { name = "gibbon"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2016-Present Ryan Newton";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan Newton";
      homepage = "https://iu-parfunc.github.io/gibbon/";
      url = "";
      synopsis = "A compiler for operating on serialized trees.";
      description = "Work in progress.\n\nPlease visit\n<https://github.com/iu-parfunc/gibbon/#building-gibbon https://github.com/iu-parfunc/gibbon>\nfor instructions on how to install Gibbon.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gibbon" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }