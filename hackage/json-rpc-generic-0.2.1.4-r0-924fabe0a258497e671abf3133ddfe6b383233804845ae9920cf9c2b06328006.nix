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
      identifier = { name = "json-rpc-generic"; version = "0.2.1.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016-2017 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://github.com/khibino/haskell-json-rpc-generic";
      url = "";
      synopsis = "Generic encoder and decode for JSON-RPC";
      description = "This package contains generic encoder and decode for JSON-RPC";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-generic-compat" or (errorHandler.buildDepError "aeson-generic-compat"))
          ];
        buildable = true;
        };
      tests = {
        "test-main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."json-rpc-generic" or (errorHandler.buildDepError "json-rpc-generic"))
            (hsPkgs."quickcheck-simple" or (errorHandler.buildDepError "quickcheck-simple"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }