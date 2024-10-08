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
      identifier = { name = "CSPM-CoreLanguage"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <fontaine@cs.uni-duesseldorf.de>";
      author = "2010 Marc Fontaine";
      homepage = "http://www.stups.uni-duesseldorf.de/~fontaine/csp";
      url = "";
      synopsis = "Definition of a FDR-compatible CSP core-language. ";
      description = "This package contains an interface for a CSP core-language.\nIt defines processes, events, event sets, a EDSL for process operations like\nparallel or interleaving.\nThis interface can be used to implement a FDR-2.83 compatible CSPM animator.\nWe use this interface in our tool to connect the functional CSPM-sub-language\nwith core CSP functionality.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }