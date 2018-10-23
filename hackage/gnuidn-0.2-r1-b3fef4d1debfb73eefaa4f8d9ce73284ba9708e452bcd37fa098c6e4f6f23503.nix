{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "gnuidn";
        version = "0.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "http://john-millikin.com/software/bindings/gnuidn/";
      url = "";
      synopsis = "Bindings for GNU IDN";
      description = "";
      buildType = "Simple";
    };
    components = {
      "gnuidn" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."idn") ];
        pkgconfig = [
          (pkgconfPkgs.libidn)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }