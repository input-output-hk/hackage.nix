{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "archive";
          version = "1.2.12";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "David Fox, Jeremy Shaw";
        homepage = "";
        url = "";
        synopsis = "A library and programs for creating hardlinked incremental archives or backups";
        description = "Uses rsync, etc to before backups similar to the old timemachine script and the newer 'Time Machine' OS X tool.";
        buildType = "Simple";
      };
      components = {
        archive = {
          depends  = [
            hsPkgs.base
            hsPkgs.regex-compat
            hsPkgs.regex-posix
            hsPkgs.HUnit
            hsPkgs.process
            hsPkgs.unix
            hsPkgs.old-locale
            hsPkgs.directory
            hsPkgs.Unixutils
            hsPkgs.network
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.xhtml
            hsPkgs.pretty
            hsPkgs.debian
            hsPkgs.debian-mirror
            hsPkgs.help
            hsPkgs.filepath
            hsPkgs.progress
            hsPkgs.Extra
          ];
        };
        exes = { archive = {}; };
      };
    }