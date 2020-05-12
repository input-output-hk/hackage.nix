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
      identifier = { name = "graph-utils"; version = "0.3.5.2"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010 Hiromi Ishii";
      maintainer = "Hiromi Ishii <mr_konn _at_ jcom.home.ne.jp>";
      author = "Hiromi ISHII";
      homepage = "http://github.com/konn/graph-utils/";
      url = "";
      synopsis = "A simple wrapper & quasi quoter for fgl.";
      description = "Simple Wrapper for generating Graph provided by Data.Graph.Inductive.\nIt also contains PageRank calculator.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      };
    }