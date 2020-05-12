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
      identifier = { name = "fplll"; version = "0.1.0.0"; };
      license = "LGPL-2.1-or-later";
      copyright = "";
      maintainer = "ldr709@gmail.com";
      author = "Lance Roy";
      homepage = "https://github.com/ldr709/haskell-fplll";
      url = "";
      synopsis = "Haskell bindings to <https://fplll.github.io/fplll/ fplll>";
      description = "";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hgmp" or (errorHandler.buildDepError "hgmp"))
          (hsPkgs."semibounded-lattices" or (errorHandler.buildDepError "semibounded-lattices"))
          (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
          ];
        pkgconfig = [
          (pkgconfPkgs."fplll" or (errorHandler.pkgConfDepError "fplll"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fplll" or (errorHandler.buildDepError "fplll"))
            ];
          buildable = true;
          };
        };
      };
    }