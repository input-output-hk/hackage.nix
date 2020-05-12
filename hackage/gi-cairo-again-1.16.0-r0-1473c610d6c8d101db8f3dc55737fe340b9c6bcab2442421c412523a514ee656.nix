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
      specVersion = "2.0";
      identifier = { name = "gi-cairo-again"; version = "1.16.0"; };
      license = "BSD-3-Clause";
      copyright = "None";
      maintainer = "magiclouds@gmail.com";
      author = "Magicloud";
      homepage = "https://github.com/magicloud/gi-cairo#readme";
      url = "";
      synopsis = "Bridge between packages gi-* and cairo-core.";
      description = "Bridge between packages gi-* and cairo-core. Just `fromGI` and `toGI`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cairo-core" or (errorHandler.buildDepError "cairo-core"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }