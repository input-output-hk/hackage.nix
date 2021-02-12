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
      identifier = { name = "libxml-sax"; version = "0.4"; };
      license = "MIT";
      copyright = "John Millikin 2009-2010, Dmitry Astapov 2010";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "";
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
          (hsPkgs."failable-list" or (errorHandler.buildDepError "failable-list"))
          ];
        libs = [ (pkgs."xml2" or (errorHandler.sysDepError "xml2")) ];
        pkgconfig = [
          (pkgconfPkgs."libxml-2.0" or (errorHandler.pkgConfDepError "libxml-2.0"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      };
    }