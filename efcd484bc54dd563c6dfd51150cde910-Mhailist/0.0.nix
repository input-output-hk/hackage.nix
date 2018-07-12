{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      warnings = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Mhailist";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cjs@cynic.net, lars@larsko.org";
        author = "Curt Sampson, Lars Kotthoff";
        homepage = "";
        url = "";
        synopsis = "Haskell mailing list manager";
        description = "A mailing list manager written in pure Haskell.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "mhailist" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.haskell98
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.binary
            ];
          };
          "Test" = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.haskell98
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.binary
              hsPkgs.HUnit
            ];
          };
        };
      };
    }