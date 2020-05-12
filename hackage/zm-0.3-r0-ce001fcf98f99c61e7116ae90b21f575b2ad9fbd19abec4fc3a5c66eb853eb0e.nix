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
      identifier = { name = "zm"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Pasqualino `Titto` Assini";
      maintainer = "tittoassini@gmail.com";
      author = "Pasqualino `Titto` Assini";
      homepage = "http://github.com/tittoassini/zm";
      url = "";
      synopsis = "Language independent, reproducible, absolute types";
      description = "See the <http://github.com/tittoassini/zm online tutorial>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."flat" or (errorHandler.buildDepError "flat"))
          (hsPkgs."model" or (errorHandler.buildDepError "model"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            ]
          else [
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            ]);
        buildable = true;
        };
      tests = {
        "zm-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
            (hsPkgs."flat" or (errorHandler.buildDepError "flat"))
            (hsPkgs."model" or (errorHandler.buildDepError "model"))
            (hsPkgs."zm" or (errorHandler.buildDepError "zm"))
            ];
          buildable = true;
          };
        "zm-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            ];
          buildable = true;
          };
        };
      };
    }