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
      identifier = { name = "bgmax"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jon.petter.bergman@gmail.com";
      author = "Petter Bergman";
      homepage = "http://petterbergman.se/bgmax.html";
      url = "";
      synopsis = "Parse BgMax-files";
      description = "A low-level parser for\n<http://www.bgc.se/upload/Gemensamt/Trycksaker/Manualer/BG6040.pdf BgMax>\n-files from <http://www.bgc.se Bankgirocentralen> (BGC).\nIt is able to parse all of the\n<http://www.bgc.se/templates/Iframe____3125.aspx example files> from BGC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      };
    }