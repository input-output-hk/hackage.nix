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
      homepage = "https://gibbon-compiler.github.io/";
      url = "";
      synopsis = "A compiler for operating on serialized trees.";
      description = "Research artifact.\n\nPlease visit\n<https://github.com/gibbon-compiler/gibbon/#building-gibbon https://github.com/gibbon-compiler/gibbon>\nfor instructions on how to install Gibbon.";
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