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
      identifier = { name = "attoparsec-aeson"; version = "2.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2016 Bryan O'Sullivan\n(c) 2011 MailRank, Inc.";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/haskell/aeson";
      url = "";
      synopsis = "Parsing of aeson's Value with attoparsec";
      description = "Parsing of aeson's Value with attoparsec, originally from aeson.\n\nThis version is an empty package with bounds on @aeson@\nwhich has \"Data.Aeson.Parser\" module.\nThis way e.g. specifying\n\n@\nbuild-depends: aeson >= 1.4.1.0 && \\<2.3, attoparsec-aeson >=2.1.0.0 && \\<2.3\n@\n\nwill have \"Data.Aeson.Parser\" available for all @aeson@ versions in range.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }