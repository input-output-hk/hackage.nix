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
      identifier = { name = "bv-sized-lens"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Ben Selfridge May 2021";
      maintainer = "benselfridge@galois.com";
      author = "Ben Selfridge";
      homepage = "";
      url = "";
      synopsis = "Well-typed lenses for bv-sized bitvectors.";
      description = "Well-typed lenses for bv-sized bitvectors. Use with bv-sized and parameterized-utils.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bv-sized" or (errorHandler.buildDepError "bv-sized"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."parameterized-utils" or (errorHandler.buildDepError "parameterized-utils"))
        ];
        buildable = true;
      };
    };
  }