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
    flags = {
      buildexample = false;
      trackallocations = false;
      usepkgconfig = true;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "hasquant"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2026 Sergei Khorev";
      maintainer = "Sergei Khorev <sergey.khorev@gmail.com>";
      author = "Sergei Khorev <sergey.khorev@gmail.com>";
      homepage = "https://github.com/khorser/hasquant#readme";
      url = "";
      synopsis = "Bindings to QuantLib";
      description = "Bindings to the QuantLib library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = pkgs.lib.optional (!system.isWindows) (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ++ pkgs.lib.optional (!(flags.usepkgconfig && !system.isWindows)) (pkgs."QuantLib" or (errorHandler.sysDepError "QuantLib"));
        pkgconfig = pkgs.lib.optional (flags.usepkgconfig && !system.isWindows) (pkgconfPkgs."quantlib" or (errorHandler.pkgConfDepError "quantlib"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "hasquant_example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasquant" or (errorHandler.buildDepError "hasquant"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if flags.buildexample then true else false;
        };
      };
      tests = {
        "hasquant_test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasquant" or (errorHandler.buildDepError "hasquant"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }