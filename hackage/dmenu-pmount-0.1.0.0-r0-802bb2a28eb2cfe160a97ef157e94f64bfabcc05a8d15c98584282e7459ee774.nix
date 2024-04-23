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
      identifier = { name = "dmenu-pmount"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Hannes Saffrich";
      maintainer = "Hannes Saffrich <m0rphism@zankapfel.org>";
      author = "Hannes Saffrich";
      homepage = "https://github.com/m0rphism/haskell-dmenu-pmount";
      url = "";
      synopsis = "Mounting and unmounting linux devices as user with dmenu and pmount.";
      description = "See README.md file.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "dmenu-pmount" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."dmenu" or (errorHandler.buildDepError "dmenu"))
          ];
          buildable = true;
        };
      };
    };
  }