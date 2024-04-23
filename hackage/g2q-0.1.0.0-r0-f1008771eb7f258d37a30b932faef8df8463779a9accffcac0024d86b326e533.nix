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
      identifier = { name = "g2q"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "william.hallahan@yale.edu";
      author = "William Hallahan, Anton Xue";
      homepage = "";
      url = "";
      synopsis = "G2Q allows constraint programming, via writing Haskell predicates.";
      description = "G2Q allows constraint programming, via writing Haskell predicates.\nA quasiquoter, g2, is provided which can take concrete arguments at runtime, and solve for unknown symbolic arguments.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."g2" or (errorHandler.buildDepError "g2"))
        ];
        buildable = true;
      };
    };
  }