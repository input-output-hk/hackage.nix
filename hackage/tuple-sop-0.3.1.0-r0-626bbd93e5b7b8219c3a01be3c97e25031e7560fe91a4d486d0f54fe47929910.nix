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
      identifier = { name = "tuple-sop"; version = "0.3.1.0"; };
      license = "GPL-3.0-only";
      copyright = "2018 Ferdinand van Walree";
      maintainer = "ferdinandvwalree@gmail.com";
      author = "Ferdinand van Walree";
      homepage = "https://github.com/Ferdinand-vW/tuple-sop#readme";
      url = "";
      synopsis = "functions on n-ary tuples using generics-sop";
      description = "Exports various functions on n-ary tuples. This library uses generics-sop to create a generic representation of n-ary product types. To regain type inference, the exported functions work only on tuples with at most 10 components.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
        ];
        buildable = true;
      };
      tests = {
        "tuple-sop-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."tuple-sop" or (errorHandler.buildDepError "tuple-sop"))
          ];
          buildable = true;
        };
      };
    };
  }