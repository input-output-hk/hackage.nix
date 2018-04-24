{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      bytestring-builder = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cereal";
          version = "0.5.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Trevor Elliott <trevor@galois.com>";
        author = "Lennart Kolmodin <kolmodin@dtek.chalmers.se>,\nGalois Inc.,\nLemmih <lemmih@gmail.com>,\nBas van Dijk <v.dijk.bas@gmail.com>";
        homepage = "https://github.com/GaloisInc/cereal";
        url = "";
        synopsis = "A binary serialization library";
        description = "A binary serialization library, similar to binary, that introduces an isolate\nprimitive for parser isolation, and labeled blocks for better error messages.";
        buildType = "Simple";
      };
      components = {
        cereal = {
          depends  = ([
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.ghc-prim
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.fail) ++ (if _flags.bytestring-builder
            then [
              hsPkgs.bytestring
              hsPkgs.bytestring-builder
            ]
            else [ hsPkgs.bytestring ]);
        };
        tests = {
          test-cereal = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.cereal
            ];
          };
        };
      };
    }