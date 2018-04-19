{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "orchid";
          version = "0.0.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sfvisser@cs.uu.nl";
        author = "Sebastiaan Visser";
        homepage = "";
        url = "";
        synopsis = "Haskell Wiki Library";
        description = "Haskell Wiki Library";
        buildType = "Simple";
      };
      components = {
        orchid = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.salvia
            hsPkgs.salvia-extras
            hsPkgs.xml
            hsPkgs.extensible-exceptions
            hsPkgs.containers
            hsPkgs.QuickCheck
            hsPkgs.parsec
            hsPkgs.fclabels
            hsPkgs.mtl
            hsPkgs.filestore
            hsPkgs.encoding
            hsPkgs.time
            hsPkgs.stm
            hsPkgs.process
            hsPkgs.unix
            hsPkgs.nano-md5
            hsPkgs.hscolour
          ];
        };
      };
    }