{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ght";
          version = "0.4.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Conrad Parker <conrad@metadecks.org>";
        author = "Conrad Parker <conrad@metadecks.org>";
        homepage = "";
        url = "";
        synopsis = "Trivial routines for inspecting git repositories";
        description = "This is a bunch of trivial routines for inspecting git repositories.\nIt is in no way useful beyond that.";
        buildType = "Simple";
      };
      components = {
        ght = {
          depends  = [
            hsPkgs.data-default
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.SHA
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.iteratee
            hsPkgs.iteratee-compress
            hsPkgs.mmap
            hsPkgs.storable-endian
          ] ++ [ hsPkgs.base ];
        };
        exes = {
          ght = {
            depends  = [
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.SHA
              hsPkgs.ui-command
              hsPkgs.unix
              hsPkgs.zlib
            ] ++ [ hsPkgs.base ];
          };
        };
      };
    }