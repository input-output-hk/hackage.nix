{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "protocol-buffers";
          version = "2.0.8";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2011 Christopher Edward Kuklewicz";
        maintainer = "Chris Kuklewicz <protobuf@personal.mightyreason.com>";
        author = "Christopher Edward Kuklewicz";
        homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/protocol-buffers";
        url = "http://code.haskell.org/protocol-buffers/";
        synopsis = "Parse Google Protocol Buffer specifications";
        description = "Parse proto files and generate Haskell code.";
        buildType = "Simple";
      };
      components = {
        "protocol-buffers" = {
          depends  = [
            hsPkgs.array
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.utf8-string
          ] ++ (if _flags.small_base
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ]);
        };
      };
    }