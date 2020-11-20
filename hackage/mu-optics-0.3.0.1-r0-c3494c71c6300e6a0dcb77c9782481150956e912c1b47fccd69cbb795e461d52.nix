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
      identifier = { name = "mu-optics"; version = "0.3.0.1"; };
      license = "Apache-2.0";
      copyright = "Copyright © 2019-2020 <http://47deg.com 47 Degrees>";
      maintainer = "alejandro.serrano@47deg.com";
      author = "Alejandro Serrano, Flavio Corpa";
      homepage = "https://higherkindness.io/mu-haskell/";
      url = "";
      synopsis = "Optics for @mu-schema@ terms";
      description = "With @mu-schema@ you can describe schemas using type-level constructs, and derive serializers from those. This package provides convenient access using @optics@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mu-schema" or (errorHandler.buildDepError "mu-schema"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          ];
        buildable = true;
        };
      };
    }