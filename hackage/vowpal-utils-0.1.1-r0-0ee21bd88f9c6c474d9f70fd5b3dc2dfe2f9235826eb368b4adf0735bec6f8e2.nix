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
      specVersion = "1.6";
      identifier = { name = "vowpal-utils"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Carter Schonwald  Copyright (c) 2012      ";
      maintainer = "first dot last at gmail dot com";
      author = "Carter Tazio Schonwald";
      homepage = "https://github.com/cartazio/Vowpal-Utils";
      url = "";
      synopsis = "Vowpal Wabbit utilities ";
      description = "Vowpal Wabbit hash and utils         ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }