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
      specVersion = "1.8";
      identifier = { name = "puppetresources"; version = "0.3.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "http://lpuppet.banquise.net";
      url = "";
      synopsis = "A program that displays the puppet resources associated to a node given .pp files.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "puppetresources" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-puppet" or (errorHandler.buildDepError "language-puppet"))
            (hsPkgs."hsfacter" or (errorHandler.buildDepError "hsfacter"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }