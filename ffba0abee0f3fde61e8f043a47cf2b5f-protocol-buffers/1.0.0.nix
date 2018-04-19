{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "protocol-buffers";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 Christopher Edward Kuklewicz";
        maintainer = "Chris Kuklewicz <protobuf@personal.mightyreason.com>";
        author = "Christopher Edward Kuklewicz";
        homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/protocol-buffers";
        url = "http://darcs.haskell.org/packages/protocol-buffers2/";
        synopsis = "Parse Google Protocol Buffer specifications";
        description = "Parse proto files and generate Haskell code.";
        buildType = "Simple";
      };
      components = {
        protocol-buffers = {
          depends  = [
            hsPkgs.binary
            hsPkgs.parsec
            hsPkgs.utf8-string
            hsPkgs.haskell-src
          ] ++ (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.array
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.syb
            ]
            else [ hsPkgs.base ]);
        };
      };
    }