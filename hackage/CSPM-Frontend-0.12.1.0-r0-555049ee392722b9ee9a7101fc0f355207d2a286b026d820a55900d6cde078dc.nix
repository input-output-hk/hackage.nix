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
      specVersion = "1.24";
      identifier = { name = "CSPM-Frontend"; version = "0.12.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>, me@dobrikov.biz";
      author = "Marc Fontaine 2007 - 2017";
      homepage = "";
      url = "";
      synopsis = "A CSP-M parser compatible with FDR-2.91";
      description = "CSP-M is the machine readable syntax of CSP (concurrent sequential processes) as used by\nthe formal methods tools FDR, Probe and ProB.\nThis Package contains functions for lexing, parsing, renaming and pretty-printing\nCSP-M specifications.\nThe parser is (almost) 100% compatible with the FDR-2.91 parser.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          ];
        buildable = true;
        };
      };
    }