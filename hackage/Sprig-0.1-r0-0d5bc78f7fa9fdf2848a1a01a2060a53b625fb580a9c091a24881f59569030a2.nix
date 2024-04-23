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
      specVersion = "1.0";
      identifier = { name = "Sprig"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Liam O'Connor";
      maintainer = "Liam O'Connor (liamoc@cse.unsw.edu.au)";
      author = "Liam O'Connor (liamoc@cse.unsw.edu.au)";
      homepage = "";
      url = "";
      synopsis = "Binding to Sprig";
      description = "Foreign Binding to Jonny D's SDL Primitives Generator (SPriG) library, a fork of SGE.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
        ];
        buildable = true;
      };
    };
  }