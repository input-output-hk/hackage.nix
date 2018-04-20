{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ac-machine";
          version = "0.2.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>";
        author = "Yuta Taniguchi <yuta.taniguchi.y.t@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Aho-Corasick string matching algorithm in Haskell";
        description = "An implementation of the Aho-Corasick string matching algorithm written in Haskell.";
        buildType = "Simple";
      };
      components = {
        ac-machine = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }