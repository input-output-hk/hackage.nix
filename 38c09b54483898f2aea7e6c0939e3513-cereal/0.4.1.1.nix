{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cereal";
          version = "0.4.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Trevor Elliott <trevor@galois.com>";
        author = "Lennart Kolmodin <kolmodin@dtek.chalmers.se>,\nGalois Inc.,\nLemmih <lemmih@gmail.com>,\nBas van Dijk <v.dijk.bas@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A binary serialization library";
        description = "A binary serialization library, similar to binary, that introduces an isolate\nprimitive for parser isolation, and labeled blocks for better error messages.";
        buildType = "Simple";
      };
      components = {
        cereal = {
          depends  = ([
            hsPkgs.bytestring
          ] ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
            ]
            else [
              hsPkgs.base
            ])) ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }