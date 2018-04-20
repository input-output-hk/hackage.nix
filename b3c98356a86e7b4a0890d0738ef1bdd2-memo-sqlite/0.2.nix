{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "memo-sqlite";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "claude@mathr.co.uk";
        author = "Claude Heiland-Allen";
        homepage = "https://code.mathr.co.uk/memo-sqlite";
        url = "";
        synopsis = "memoize functions using SQLite3 database";
        description = "";
        buildType = "Simple";
      };
      components = {
        memo-sqlite = {
          depends  = [
            hsPkgs.base
            hsPkgs.direct-sqlite
            hsPkgs.text
          ];
        };
      };
    }