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
      specVersion = "1.12";
      identifier = { name = "composite-aeson-path"; version = "0.8.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc., 2020-2021 Vital Biosciences";
      maintainer = "oss@vitalbio.com";
      author = "Confer Health, Inc";
      homepage = "https://github.com/ConferOpenSource/composite#readme";
      url = "";
      synopsis = "Formatting data for the path library.";
      description = "JsonFormat for Path.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composite-aeson" or (errorHandler.buildDepError "composite-aeson"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          ];
        buildable = true;
        };
      };
    }