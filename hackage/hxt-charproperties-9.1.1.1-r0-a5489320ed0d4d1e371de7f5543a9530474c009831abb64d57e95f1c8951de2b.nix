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
      specVersion = "1.4";
      identifier = { name = "hxt-charproperties"; version = "9.1.1.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2010- Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "Character properties and classes for XML and Unicode";
      description = "Character proprties defined by XML and Unicode standards.\nThese modules contain predicates for Unicode blocks and char proprties\nand character predicates defined by XML.\nSupported Unicode version is 5.2.0.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }