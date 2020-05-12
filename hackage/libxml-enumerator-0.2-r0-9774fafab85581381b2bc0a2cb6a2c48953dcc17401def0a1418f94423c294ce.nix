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
      identifier = { name = "libxml-enumerator"; version = "0.2"; };
      license = "MIT";
      copyright = "Copyright (c) John Millikin 2010";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Enumerator-based API for libXML's SAX interface";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."libxml-sax" or (errorHandler.buildDepError "libxml-sax"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          ];
        buildable = true;
        };
      };
    }