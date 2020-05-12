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
      identifier = { name = "CSPM-Frontend"; version = "0.7.4.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <fontaine@cs.uni-duesseldorf.de>, me@dobrikov.biz";
      author = "Marc Fontaine 2007 - 2011";
      homepage = "http://www.stups.uni-duesseldorf.de/~fontaine/csp";
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
          (hsPkgs."parsec2" or (errorHandler.buildDepError "parsec2"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      };
    }