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
      identifier = { name = "libxml-sax"; version = "0.3"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) John Millikin 2009-2010,\n(c) Dmitry Astapov 2010";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "http://ianen.org/haskell/bindings/libxml-sax/";
      url = "";
      synopsis = "Bindings for the libXML2 SAX interface";
      description = "Incrementally convert text to lists of XML events";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."xml2" or (errorHandler.sysDepError "xml2")) ];
        pkgconfig = [
          (pkgconfPkgs."libxml-2.0" or (errorHandler.pkgConfDepError "libxml-2.0"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }