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
      specVersion = "1.12";
      identifier = { name = "numeric-kinds"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2020-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpr@google.com>";
      author = "Andrew Pritchard <awpr@google.com>";
      homepage = "https://github.com/google/hs-dependent-literals#readme";
      url = "";
      synopsis = "Type-level numeric types, classes, and instances.";
      description = "This provides numeric types meant for use at the type level with -XDataKinds,\nalong with type families that act like type-level typeclasses providing\nvarious operations.\n\nCurrently, this primarily exists in support of\n<https://hackage.haskell.org/package/snumber snumber> and\n<https://hackage.haskell.org/package/dependent-literals-plugin dependent-literals-plugin>,\nand the only type-level numeric type in the current version is @Integer@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }