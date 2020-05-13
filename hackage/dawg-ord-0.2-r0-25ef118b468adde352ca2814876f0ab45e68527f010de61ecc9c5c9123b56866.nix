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
      identifier = { name = "dawg-ord"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Jakub Waszczuk";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/dawg-ord";
      url = "";
      synopsis = "Directed acyclic word graphs";
      description = "The library implements /directed acyclic word graphs/ (DAWGs)\ninternally represented as /minimal acyclic deterministic\nfinite-state automata/.\n\nThe library allows to build DAWGs from words over any alphabet\nproviding an `Ord` instance.\nIt also provides a fast insert operation which can be used to\nbuild DAWGs on-the-fly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }