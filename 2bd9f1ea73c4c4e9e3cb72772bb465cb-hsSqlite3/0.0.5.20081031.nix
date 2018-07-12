{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hsSqlite3";
          version = "0.0.5.20081031";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
        author = "Evgeny Jukov";
        homepage = "http://code.haskell.org/hsSqlite3";
        url = "";
        synopsis = "sqlite3 bindings";
        description = "";
        buildType = "Custom";
      };
      components = {
        "hsSqlite3" = {
          depends  = [ hsPkgs.base ];
          pkgconfig = [
            pkgconfPkgs.sqlite3
          ];
        };
        exes = { "5minutes" = {}; };
      };
    }