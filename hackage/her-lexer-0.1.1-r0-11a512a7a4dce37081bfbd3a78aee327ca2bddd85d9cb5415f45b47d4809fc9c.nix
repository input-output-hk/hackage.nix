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
      identifier = { name = "her-lexer"; version = "0.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Timothy Hobbs<timothyhobbs@seznam.cz>";
      author = "Conor McBride";
      homepage = "http://personal.cis.strath.ac.uk/~conor/pub/she";
      url = "";
      synopsis = "A lexer for Haskell source code.";
      description = "This is a simple lexer which converts Haskell source code into tokins and back to ordinary haskell again.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
        ];
        buildable = true;
      };
    };
  }