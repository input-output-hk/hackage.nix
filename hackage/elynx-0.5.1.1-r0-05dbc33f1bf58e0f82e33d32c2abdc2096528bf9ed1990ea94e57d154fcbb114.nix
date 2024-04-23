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
      specVersion = "2.2";
      identifier = { name = "elynx"; version = "0.5.1.1"; };
      license = "GPL-3.0-or-later";
      copyright = "Dominik Schrempf (2021)";
      maintainer = "dominik.schrempf@gmail.com";
      author = "Dominik Schrempf";
      homepage = "https://github.com/dschrempf/elynx#readme";
      url = "";
      synopsis = "Validate and (optionally) redo ELynx analyses";
      description = "Please see the README on GitHub at <https://github.com/dschrempf/elynx>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "elynx" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."elynx-tools" or (errorHandler.buildDepError "elynx-tools"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."slynx" or (errorHandler.buildDepError "slynx"))
            (hsPkgs."tlynx" or (errorHandler.buildDepError "tlynx"))
          ];
          buildable = true;
        };
      };
    };
  }