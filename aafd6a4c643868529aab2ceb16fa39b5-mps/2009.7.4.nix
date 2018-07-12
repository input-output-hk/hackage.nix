{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "mps";
          version = "2009.7.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/mps/";
        url = "";
        synopsis = "OO duck syntax";
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
            hsPkgs.old-time
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.regexpr
            hsPkgs.parsec
            hsPkgs.utf8-string
            hsPkgs.directory
            hsPkgs.interpolatedstring-qq
            hsPkgs.base64-string
            hsPkgs.zlib
            hsPkgs.old-locale
            hsPkgs.filepath
            hsPkgs.template-haskell
          ];
        };
      };
    }