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
      identifier = { name = "numeric-quest"; version = "0.2.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <numeric-quest@henning-thielemann.de>";
      author = "Jan Skibinski";
      homepage = "http://www.haskell.org/haskellwiki/Numeric_Quest";
      url = "";
      synopsis = "Math and quantum mechanics";
      description = "List based linear algebra,\nsimiltaneous linear equations,\neigenvalues and eigenvectors,\nroots of polynomials,\ntranscendent functions with arbitrary precision\nimplemented by continued fractions,\nquantum operations,\ntensors";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."prelude-compat" or (errorHandler.buildDepError "prelude-compat"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }