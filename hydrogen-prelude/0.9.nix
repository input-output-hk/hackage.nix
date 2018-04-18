{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "hydrogen-prelude";
          version = "0.9";
        };
        license = "MIT";
        copyright = "";
        maintainer = "julian@scravy.de";
        author = "Julian Fleischer";
        homepage = "http://scravy.de/hydrogen-prelude/";
        url = "";
        synopsis = "Hydrogen Prelude";
        description = "";
        buildType = "Simple";
      };
      components = {
        hydrogen-prelude = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.hydrogen-multimap
            hsPkgs.hydrogen-version
            hsPkgs.network
            hsPkgs.process
            hsPkgs.random
            hsPkgs.regex-base
            hsPkgs.regex-tdfa
            hsPkgs.strict
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.uuid
          ];
        };
      };
    }