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
      specVersion = "1.8";
      identifier = { name = "hs-php-session"; version = "0.0.8.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mail@edwardlblake.com";
      author = "Edward L. Blake";
      homepage = "https://codeberg.org/elblake/hs-php-session";
      url = "";
      synopsis = "PHP session serialization";
      description = "";
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