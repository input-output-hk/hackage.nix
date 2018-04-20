{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cache";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Henri Verroken";
        maintainer = "henriverroken@gmail.com";
        author = "Henri Verroken";
        homepage = "https://github.com/hverr/haskell-cache";
        url = "";
        synopsis = "An in-memory key/value store with expiration support";
        description = "An in-memory key/value store with expiration support, similar\nto patrickmn/go-cache for Go.\n\nThe cache is a shared mutable HashMap implemented using STM and\nwith support for expiration times.";
        buildType = "Simple";
      };
      components = {
        cache = {
          depends  = [
            hsPkgs.base
            hsPkgs.clock
            hsPkgs.hashable
            hsPkgs.stm
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          cache-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.cache
              hsPkgs.clock
              hsPkgs.hspec
              hsPkgs.stm
              hsPkgs.transformers
            ];
          };
        };
      };
    }