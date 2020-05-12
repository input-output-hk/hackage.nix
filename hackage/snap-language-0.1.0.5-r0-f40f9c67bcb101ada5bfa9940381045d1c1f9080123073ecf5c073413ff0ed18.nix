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
      specVersion = "1.22";
      identifier = { name = "snap-language"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jon.petter.bergman@gmail.com";
      author = "Petter Bergman";
      homepage = "https://github.com/jonpetterbergman/snap-accept-language";
      url = "";
      synopsis = "Language handling for Snap";
      description = "Language handling for Snap.\n\nSupport for determining the client's prefered language using\nthe Accept-Language header or using suffixes to the requested URI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          ];
        buildable = true;
        };
      };
    }