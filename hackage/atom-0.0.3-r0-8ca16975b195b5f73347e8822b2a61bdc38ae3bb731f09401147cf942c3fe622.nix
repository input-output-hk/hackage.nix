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
      specVersion = "1.2";
      identifier = { name = "atom"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tomahawkins@gmail.com";
      author = "Tom Hawkins";
      homepage = "";
      url = "";
      synopsis = "A DSL for embedded hard realtime applications.";
      description = "Atom is a Haskell DSL for designing hard realtime embedded programs.\nBased on conditional term rewriting, atom will compile\na collection of atomic state transition rules\nto a C program with constant memory use and deterministic execution time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
    };
  }