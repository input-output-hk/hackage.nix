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
      specVersion = "1.6";
      identifier = { name = "atom"; version = "1.0.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>, Lee Pike <leepike@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "http://tomahawkins.org";
      url = "";
      synopsis = "A DSL for embedded hard realtime applications.";
      description = "Atom is a Haskell DSL for designing hard realtime embedded software.\nBased on guarded atomic actions (similar to STM), Atom enables\nhighly concurrent programming without the need for mutex locking.\nIn addition, Atom performs compile-time task scheduling and generates code\nwith deterministic execution time and constant memory use, simplifying the\nprocess of timing verification and memory consumption in hard realtime applications.\nWithout mutex locking and run-time task scheduling, Atom eliminates\nthe need and overhead of RTOSs for many embedded applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          ];
        buildable = true;
        };
      };
    }