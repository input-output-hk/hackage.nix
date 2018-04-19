{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ansi-pretty";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/futurice/haskell-ansi-pretty#readme";
        url = "";
        synopsis = "AnsiPretty for ansi-wl-pprint";
        description = "'AnsiPretty' type class, more colorful than 'Pretty'.";
        buildType = "Simple";
      };
      components = {
        ansi-pretty = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.ansi-wl-pprint
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.generics-sop
            hsPkgs.nats
            hsPkgs.scientific
            hsPkgs.semigroups
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }