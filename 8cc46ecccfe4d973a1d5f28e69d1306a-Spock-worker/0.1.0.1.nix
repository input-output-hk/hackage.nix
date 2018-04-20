{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Spock-worker";
          version = "0.1.0.1";
        };
        license = "Apache-2.0";
        copyright = "(c) 2014 Alexander Thiemann";
        maintainer = "mail@agrafix.net";
        author = "Alexander Thiemann <mail@agrafix.net>";
        homepage = "http://github.com/agrafix/Spock-worker";
        url = "";
        synopsis = "Background workers for Spock";
        description = "Adds a background-job queue to Spock";
        buildType = "Simple";
      };
      components = {
        Spock-worker = {
          depends  = [
            hsPkgs.base
            hsPkgs.Spock
            hsPkgs.text
            hsPkgs.time
            hsPkgs.stm
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
      };
    }