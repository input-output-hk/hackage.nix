{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "flower";
          version = "0.1.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Ketil Malde <ketil@malde.org>";
        author = "Ketil Malde";
        homepage = "http://malde.org/~ketil/biohaskell/flower";
        url = "";
        synopsis = "Analyze 454 flowgrams  (.SFF files)";
        description = "flower - The FLOWgram ExtracteR\n\nReads files in SFF-format and produces various output, including sequences\nwith quality, or flowgram data in tabular format.\n\nThe Darcs repository is at <http://malde.org/~ketil/biohaskell/flower>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          flower = {
            depends  = [
              hsPkgs.bio
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.binary
            ];
          };
        };
      };
    }