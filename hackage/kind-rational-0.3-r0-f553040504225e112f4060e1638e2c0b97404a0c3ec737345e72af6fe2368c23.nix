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
      specVersion = "2.4";
      identifier = { name = "kind-rational"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2023";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/hs-kind";
      url = "";
      synopsis = "Type-level rationals. Like KnownNat, but for rationals.";
      description = "Type-level rationals. Like KnownNat, but for rationals.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."kind-integer" or (errorHandler.buildDepError "kind-integer"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."kind-integer" or (errorHandler.buildDepError "kind-integer"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."kind-rational" or (errorHandler.buildDepError "kind-rational"))
          ];
          buildable = true;
        };
      };
    };
  }