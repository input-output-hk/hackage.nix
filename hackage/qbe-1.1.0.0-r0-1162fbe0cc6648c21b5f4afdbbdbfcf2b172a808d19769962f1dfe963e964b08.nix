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
      identifier = { name = "qbe"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Francesco Gazzetta";
      maintainer = "Francesco Gazzetta <fgaz@fgaz.me>";
      author = "Francesco Gazzetta";
      homepage = "https://sr.ht/~fgaz/qbe-hs";
      url = "";
      synopsis = "Types and prettyprinter for the IL of the QBE compiler backend";
      description = "This library provides types representing\nthe [intermediate language](https://c9x.me/compile/doc/il.html)\nof the [QBE](https://c9x.me/compile/) compiler backend.\nIt also provides pretty-printing instances based on\nthe [@prettyprinter@](https://hackage.haskell.org/package/prettyprinter)\nlibrary, that emit the textual representation of the IL.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
        ];
        buildable = true;
      };
      tests = {
        "golden" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qbe" or (errorHandler.buildDepError "qbe"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-silver" or (errorHandler.buildDepError "tasty-silver"))
          ];
          buildable = true;
        };
      };
    };
  }