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
    flags = { ghcflags = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hsinspect"; version = "0.0.11"; };
      license = "GPL-3.0-or-later";
      copyright = "2019 Tseen She";
      maintainer = "Tseen She";
      author = "Tseen She";
      homepage = "";
      url = "";
      synopsis = "Inspect Haskell source files.";
      description = "Inspect @.hs@ files using the ghc api.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ (pkgs.lib).optional (flags.ghcflags) (hsPkgs."ghcflags" or (errorHandler.buildDepError "ghcflags"));
        buildable = true;
        };
      exes = {
        "hsinspect" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hsinspect" or (errorHandler.buildDepError "hsinspect"))
            ] ++ (pkgs.lib).optional (flags.ghcflags) (hsPkgs."ghcflags" or (errorHandler.buildDepError "ghcflags"));
          buildable = true;
          };
        };
      };
    }