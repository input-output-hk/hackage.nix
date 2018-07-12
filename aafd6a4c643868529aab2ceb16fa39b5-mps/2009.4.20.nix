{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "mps";
          version = "2009.4.20";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/mps/";
        url = "";
        synopsis = "message passing style helpers";
        description = "message passing style helpers";
        buildType = "Simple";
      };
      components = {
        "mps" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.parallel
            hsPkgs.fgl
            hsPkgs.QuickCheck
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.pandoc
            hsPkgs.regexpr
            hsPkgs.parsec
            hsPkgs.utf8-string
            hsPkgs.directory
            hsPkgs.interpolatedstring-qq
          ];
        };
      };
    }