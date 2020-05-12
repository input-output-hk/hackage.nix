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
      identifier = { name = "hxt-charproperties"; version = "9.2.0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2010-2014 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt";
      homepage = "https://github.com/UweSchmidt/hxt";
      url = "";
      synopsis = "Character properties and classes for XML and Unicode";
      description = "Character proprties defined by XML and Unicode standards.\nThese modules contain predicates for Unicode blocks and char proprties\nand character predicates defined by XML.\nSupported Unicode version is 7.0.0";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }