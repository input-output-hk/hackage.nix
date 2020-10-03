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
      specVersion = "1.18";
      identifier = { name = "nri-env-parser"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 NoRedInk Corp.";
      maintainer = "haskell-open-source@noredink.com";
      author = "NoRedInk";
      homepage = "https://github.com/NoRedInk/haskell-libraries#readme";
      url = "";
      synopsis = "Read environment variables as settings to build 12-factor apps.";
      description = "Please see the README at <https://github.com/NoRedInk/haskell-libraries/tree/trunk/env-parser>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."nri-prelude" or (errorHandler.buildDepError "nri-prelude"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }