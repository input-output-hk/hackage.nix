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
      identifier = { name = "edit-lenses"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel@wagner-home.com";
      author = "Daniel Wagner";
      homepage = "";
      url = "";
      synopsis = "Symmetric, stateful edit lenses";
      description = "An implementation of the ideas of the paper /Edit Lenses/,\navailable at <http://dmwit.com/papers/201107EL.pdf>,\ntogether with a very simple demo program for a simple\nstring edit lens.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
          ];
        buildable = true;
        };
      exes = {
        "lens-editor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."edit-lenses" or (errorHandler.buildDepError "edit-lenses"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            ];
          buildable = true;
          };
        };
      };
    }