{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "orchid";
          version = "0.0.6";
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
            hsPkgs.xml
            hsPkgs.containers
            hsPkgs.QuickCheck
            hsPkgs.parsec
            hsPkgs.time
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.process
            hsPkgs.unix
            hsPkgs.nano-md5
            hsPkgs.hscolour
            hsPkgs.encoding
            hsPkgs.utf8-string
            hsPkgs.directory
          ];
        };
      };
    }