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
      identifier = { name = "dawg-ord"; version = "0.4.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Jakub Waszczuk";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/dawg-ord";
      url = "";
      synopsis = "Directed acyclic word graphs";
      description = "The library implements /directed acyclic word graphs/ (DAWGs) internally\nrepresented as /minimal acyclic deterministic finite-state automata/.\nThe implemented version of DAWG is, semantically, a map from\nsequences of alphabet symbols (keys) to values.\n\nThe library allows to build DAWGs over any symbols and values\nprovided that they both have `Ord` instances (see the\n`Data.DAWG.Ord` module).\nIt also provides a fast insert operation which can be used to\nconstruct DAWGs on-the-fly.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }