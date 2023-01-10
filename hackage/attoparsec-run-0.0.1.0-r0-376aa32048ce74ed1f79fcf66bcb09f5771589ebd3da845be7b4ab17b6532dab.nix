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
      identifier = { name = "attoparsec-run"; version = "0.0.1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/attoparsec-run";
      url = "";
      synopsis = "Conveniently run Attoparsec parsers";
      description = "This package fixes a number of problems with the API that\nAttoparsec provides for running parsers. The difficulties stem from\nthe that that Attoparsec's @IResult@ type encompasses three situations:\nWhen parsing has succeeded, when parsing has failed, and when parsing\nis awaiting further input. This is insufficient to describe situations\nin which we know we are dealing with a subset of these three cases.\nWe address this by introducing two smaller types: @FinalResult@ and\n@ParseError@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }