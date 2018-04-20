{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "expat-enumerator";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "http://john-millikin.com/software/expat-enumerator/";
        url = "";
        synopsis = "Enumerator-based API for Expat";
        description = "";
        buildType = "Simple";
      };
      components = {
        expat-enumerator = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.enumerator
            hsPkgs.transformers
            hsPkgs.hexpat
            hsPkgs.xml-types
          ];
        };
      };
    }