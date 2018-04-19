{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "protocol-buffers-descriptor";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 Christopher Edward Kuklewicz";
        maintainer = "Chris Kuklewicz <protobuf@personal.mightyreason.com>";
        author = "Christopher Edward Kuklewicz";
        homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/protocol-buffers";
        url = "http://darcs.haskell.org/packages/protocol-buffers2/";
        synopsis = "Self-description of Google Protocol Buffer specifications";
        description = "Uses protocol-buffers package";
        buildType = "Simple";
      };
      components = {
        protocol-buffers-descriptor = {
          depends  = [
            hsPkgs.protocol-buffers
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
            ]
            else [ hsPkgs.base ]);
        };
      };
    }