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
    flags = { bbenchmarks = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "intensional-datatys"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Eddie Jones, Steven Ramsay";
      maintainer = "ej16147@bristol.ac.uk, steven.ramsay@bristol.ac.uk";
      author = "Eddie Jones, Steven Ramsay";
      homepage = "https://github.com/bristolpl/intensional-datatys#readme";
      url = "";
      synopsis = "A GHC Core plugin for intensional datatype refinement checking";
      description = "Please see the README on GitHub at <https://github.com/bristolpl/intensional-datatys#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
        ];
        buildable = true;
      };
      sublibs = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."intensional-datatys" or (errorHandler.buildDepError "intensional-datatys"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = if flags.bbenchmarks then true else false;
        };
      };
      exes = {
        "profile" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."intensional-datatys" or (errorHandler.buildDepError "intensional-datatys"))
          ];
          buildable = false;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."intensional-datatys" or (errorHandler.buildDepError "intensional-datatys"))
          ];
          buildable = true;
        };
      };
    };
  }