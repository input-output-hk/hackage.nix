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
      identifier = { name = "CSPM-ToProlog"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <fontaine@cs.uni-duesseldorf.de>";
      author = "2006-2011 Marc Fontaine";
      homepage = "http://www.stups.uni-duesseldorf.de/ProB";
      url = "";
      synopsis = "some modules specific for the ProB tool";
      description = "This package constains a translation from a CSPM AST to the representation\nused by the ProB tool.\nThis code is only interesting for ProB developers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."CSPM-Frontend" or (errorHandler.buildDepError "CSPM-Frontend"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }