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
      identifier = { name = "lambdacube-core"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba (dot) hruska (at) gmail (dot) com";
      author = "Csaba Hruska, Gergely Patai";
      homepage = "http://lambdacube3d.wordpress.com/";
      url = "";
      synopsis = "LambdaCube 3D IR";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }