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
      identifier = { name = "libxml-sax"; version = "0.7.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "https://john-millikin.com/software/haskell-libxml/";
      url = "";
      synopsis = "Bindings for the libXML2 SAX interface";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          ];
        libs = [ (pkgs."xml2" or (errorHandler.sysDepError "xml2")) ];
        pkgconfig = [
          (pkgconfPkgs."libxml-2.0" or (errorHandler.pkgConfDepError "libxml-2.0"))
          ];
        buildable = true;
        };
      };
    }