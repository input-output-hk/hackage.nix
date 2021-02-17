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
      identifier = { name = "libversion"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Poscat 2020";
      maintainer = "poscat@mail.poscat.moe";
      author = "Poscat";
      homepage = "https://github.com/poscat0x04/libversion";
      url = "";
      synopsis = "Haskell binding to libversion";
      description = "Haskell binding to libversion, an advanced version string comparison library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libversion" or (errorHandler.pkgConfDepError "libversion"))
          ];
        buildable = true;
        };
      };
    }