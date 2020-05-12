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
    flags = { splitbase = true; buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "iteratee-mtl"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John W. Lato <jwlato@gmail.com>";
      author = "Oleg Kiselyov, John W. Lato";
      homepage = "http://inmachina.net/~jwlato/haskell/iteratee";
      url = "";
      synopsis = "Iteratee-based I/O";
      description = "The Iteratee monad provides strict, safe, and functional I/O. In addition\nto pure Iteratee processors, file IO and combinator functions are provided.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."MonadCatchIO-mtl" or (errorHandler.buildDepError "MonadCatchIO-mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      exes = {
        "testIteratee" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }