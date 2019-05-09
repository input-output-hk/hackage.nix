{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "libxml-sax"; version = "0.5"; };
      license = "MIT";
      copyright = "John Millikin 2010";
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
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.xml-types)
          ];
        libs = [ (pkgs."xml2") ];
        pkgconfig = [ (pkgconfPkgs."libxml-2.0") ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      };
    }