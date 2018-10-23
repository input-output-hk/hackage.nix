{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "libxml-sax";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "";
      url = "";
      synopsis = "Bindings for the libXML2 SAX interface";
      description = "Incrementally convert text to lists of XML events";
      buildType = "Simple";
    };
    components = {
      "libxml-sax" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."xml2") ];
        pkgconfig = [
          (pkgconfPkgs.libxml-2.0)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }