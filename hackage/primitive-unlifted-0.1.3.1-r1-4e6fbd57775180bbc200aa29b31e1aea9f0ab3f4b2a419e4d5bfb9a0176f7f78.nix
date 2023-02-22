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
      specVersion = "2.2";
      identifier = { name = "primitive-unlifted"; version = "0.1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/haskell-primitive/primitive-unlifted";
      url = "";
      synopsis = "Primitive GHC types with unlifted types inside";
      description = "Primitive GHC types with unlifted types inside. There used\nto be a module named `Data.Primitive.UnliftedArray` in the\n`primitive` library. However, the techniques it used were\nunsound in the presence of certain FFI calls. This library\na successor to that module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          ];
        buildable = true;
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive-unlifted" or (errorHandler.buildDepError "primitive-unlifted"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }