{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "log-postgres";
          version = "0.7.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Scrive AB";
        maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>,\nMikhail Glushenkov <mikhail@scrive.com>,\nOleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Scrive AB";
        homepage = "https://github.com/scrive/log";
        url = "";
        synopsis = "Structured logging solution (PostgreSQL back end)";
        description = "PostgreSQL back end for the 'log' library.\nDepends on 'log-base'.";
        buildType = "Simple";
      };
      components = {
        log-postgres = {
          depends  = [
            hsPkgs.base
            hsPkgs.log-base
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
            hsPkgs.deepseq
            hsPkgs.hpqtypes
            hsPkgs.http-client
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.split
            hsPkgs.text
            hsPkgs.text-show
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }