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
      identifier = { name = "tuple-append"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Willem Van Onsem";
      maintainer = "hapytexteu+gh@gmail.com";
      author = "Willem Van Onsem";
      homepage = "https://github.com/hapytex/tuple-append#readme";
      url = "";
      synopsis = "A package to append items and tuples into new tuples.";
      description = "A library that makes it more convenient to append a tuple with /m/ items and a tuple with /n/ items into a tuple with /m+n/ items, together with functions to add an element at the left, or the right side of a tuple.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "append-tuple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tuple-append" or (errorHandler.buildDepError "tuple-append"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }