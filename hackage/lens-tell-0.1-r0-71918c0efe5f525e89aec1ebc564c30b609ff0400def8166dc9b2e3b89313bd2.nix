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
      specVersion = "2.4";
      identifier = { name = "lens-tell"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2021 Isaac Elliott";
      maintainer = "isaace71295@gmail.com";
      author = "Isaac Elliott";
      homepage = "https://github.com/LightAndLight/tell";
      url = "";
      synopsis = "MonadTell-based lens combinators";
      description = "@MonadTell@-based equivalents of @lens@ combinators that use @MonadWriter@'s @tell@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."tell" or (errorHandler.buildDepError "tell"))
          ];
        buildable = true;
        };
      };
    }