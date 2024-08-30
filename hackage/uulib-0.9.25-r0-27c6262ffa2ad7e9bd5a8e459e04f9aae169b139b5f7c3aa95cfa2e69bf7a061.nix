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
      identifier = { name = "uulib"; version = "0.9.25"; };
      license = "BSD-3-Clause";
      copyright = "Universiteit Utrecht";
      maintainer = "UU Computer Science";
      author = "";
      homepage = "https://github.com/UU-ComputerScience/uulib";
      url = "";
      synopsis = "Haskell Utrecht Tools Library";
      description = "Fast Parser Combinators and Pretty Printing Combinators";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }