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
    flags = { embedded = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "limp-cbc"; version = "0.3.2.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "amos.robinson@gmail.com";
      author = "Amos Robinson";
      homepage = "https://github.com/amosr/limp-cbc";
      url = "";
      synopsis = "bindings for integer linear programming solver Coin/CBC";
      description = "Bindings to external solver, CBC.\nCBC is somewhat faster than GLPK, and also has a more permissive licence.\nRelies on coin/cbc version 2.8.6.\nThis package has a few caveats: invalid programs can cause segfaults, and the library-based solver is slower than the command-line based one.\nSee https://github.com/amosr/limp-cbc for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."limp" or (errorHandler.buildDepError "limp"))
        ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        pkgconfig = pkgs.lib.optional (!flags.embedded) (pkgconfPkgs."cbc" or (errorHandler.pkgConfDepError "cbc"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."limp" or (errorHandler.buildDepError "limp"))
            (hsPkgs."limp-cbc" or (errorHandler.buildDepError "limp-cbc"))
          ];
          buildable = true;
        };
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."limp" or (errorHandler.buildDepError "limp"))
            (hsPkgs."limp-cbc" or (errorHandler.buildDepError "limp-cbc"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }