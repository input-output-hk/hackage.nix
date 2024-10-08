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
      identifier = { name = "infix"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "None";
      author = "Bernie Pope <bjpop@csse.unimelb.edu.au>";
      homepage = "http://www.cs.mu.oz.au/~bjpop/code.html";
      url = "";
      synopsis = "Infix expression re-parsing (for HsParser library)";
      description = "The Haskell parser does not consider the fixity\nof operators when parsing infix applications.\nAll infix applications are thus parsed as\nif the operators were all left associative with\nthe same precedence.\nThis module contains code for re-parsing infix\napplications taking into account the fixity of\noperators.\nThe important algorithm is the well known\noperator precedence parsing algorithm. See\ncomments in the code for more detailed\ninformation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."FiniteMap" or (errorHandler.buildDepError "FiniteMap"))
        ];
        buildable = true;
      };
    };
  }