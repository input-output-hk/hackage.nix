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
      identifier = { name = "AesonBson"; version = "0.2.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "CC0";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Niklas Hambüchen <mail@nh2.me> & Andras Slemmer <0slemi0@gmail.com>";
      homepage = "https://github.com/nh2/AesonBson";
      url = "";
      synopsis = "Mapping between Aeson's JSON and Bson objects.";
      description = "This package lets you convert between Aeson's JSON and Bson objects. (testing cabal revision online form)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }