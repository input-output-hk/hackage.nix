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
      specVersion = "1.8";
      identifier = { name = "conduit"; version = "1.2.9"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Streaming data processing library.";
      description = "`conduit` is a solution to the streaming data problem, allowing for production,\ntransformation, and consumption of streams of data in constant memory. It is an\nalternative to lazy I\\/O which guarantees deterministic resource handling.\n\nFor more information about conduit in general, and how this package in\nparticular fits into the ecosystem, see [the conduit\nhomepage](https://github.com/snoyberg/conduit#readme).\n\nHackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/conduit>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.9")) (hsPkgs."void" or (errorHandler.buildDepError "void"));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.9")) (hsPkgs."void" or (errorHandler.buildDepError "void"));
          buildable = true;
          };
        };
      benchmarks = {
        "optimize-201408" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
            ];
          buildable = true;
          };
        "unfused" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }