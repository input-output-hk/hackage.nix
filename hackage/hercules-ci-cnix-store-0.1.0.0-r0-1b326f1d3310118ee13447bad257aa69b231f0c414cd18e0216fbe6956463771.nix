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
      identifier = { name = "hercules-ci-cnix-store"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2018-2020 Hercules CI";
      maintainer = "info@hercules-ci.com";
      author = "Hercules CI contributors";
      homepage = "https://docs.hercules-ci.com";
      url = "";
      synopsis = "Haskell bindings for Nix's libstore";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."inline-c-cpp" or (errorHandler.buildDepError "inline-c-cpp"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
        libs = [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."boost_context" or (errorHandler.sysDepError "boost_context"))
          ];
        pkgconfig = [
          (pkgconfPkgs."nix-store" or (errorHandler.pkgConfDepError "nix-store"))
          (pkgconfPkgs."nix-main" or (errorHandler.pkgConfDepError "nix-main"))
          ];
        buildable = true;
        };
      };
    }