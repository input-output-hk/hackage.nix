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
    flags = { base4 = true; splitbase = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "unification-fd"; version = "0.11.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007--2021 wren gayle romano";
      maintainer = "winterkoninkje@gmail.com";
      author = "wren gayle romano";
      homepage = "https://wrengr.org/software/hackage.html";
      url = "";
      synopsis = "Simple generic unification algorithms.";
      description = "Simple generic unification algorithms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }