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
      identifier = { name = "cabal2doap"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009, Greg Heartsfield";
      maintainer = "Greg Heartsfield <scsibug@imap.cc>";
      author = "Greg Heartsfield <scsibug@imap.cc>";
      homepage = "http://gregheartsfield.com/cabal2doap/";
      url = "";
      synopsis = "Cabal to Description-of-a-Project (DOAP)";
      description = "A converter from Cabal build description files, to\nDescription-of-a-Project (DOAP) RDF files, giving visibility on\nthe semantic web to cabalized Haskell projects.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal2doap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }