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
      specVersion = "3.0";
      identifier = { name = "opendht-hs"; version = "0.1.1.1"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "sim.desaulniers@gmail.com";
      author = "Simon Désaulniers";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for OpenDHT";
      description = "Haskell bindings for [OpenDHT](https://github.com/savoirfairelinux/opendht) (based\non opendht-c, the C bindings for OpenDHT) exposing only pure Haskell data types.\n\nThis library defines a monad taking care of all pointers used to interact with\nopendht-c.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        pkgconfig = [
          (pkgconfPkgs."opendht-c" or (errorHandler.pkgConfDepError "opendht-c"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }