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
      specVersion = "3.0";
      identifier = { name = "linear-smc"; version = "2.2.3"; };
      license = "LGPL-3.0-or-later";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "Build SMC morphisms using linear types";
      description = "A number of domain specific languages, such as circuits or\ndata-science workflows, are best expressed as diagrams of boxes\nconnected by wires.\nA faithful abstraction of box-and-wires is Symmetric Monoidal Categories (SMCs)\nThis library\nallows one to program SMCs with linear functions instead of SMC\ncombinators. This is done without resorting to template haskell or compiler plugins.\nThe rationale and design of this library is provided by the paper  \"Evaluating Linear Functions to Symmetric Monoidal Categories\", by Jean-Philippe Bernardy and Arnaud Spiwack, appearing at Haskell Symposium 2021. This implementation provides additionally: a much improved implementation as well as an interface specifically tailored towards tensor calculus and compact-closed categories in general.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      tests = {
        "test-unitary" = {
          depends = [
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }