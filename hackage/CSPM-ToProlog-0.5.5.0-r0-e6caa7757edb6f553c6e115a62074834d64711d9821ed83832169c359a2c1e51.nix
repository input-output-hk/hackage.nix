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
      identifier = { name = "CSPM-ToProlog"; version = "0.5.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      author = "2006-2017 Marc Fontaine <Marc.Fontaine@gmx.de>";
      homepage = "";
      url = "";
      synopsis = "some modules specific for the ProB tool";
      description = "This package contains a translation from a CSPM AST to the representation\nused by the ProB tool.\nThis code is only interesting for ProB developers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."CSPM-Frontend" or (errorHandler.buildDepError "CSPM-Frontend"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }