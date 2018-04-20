{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nested-routes";
          version = "0.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Like scotty, but nested";
        description = "";
        buildType = "Simple";
      };
      components = {
        nested-routes = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.semigroups
            hsPkgs.containers
            hsPkgs.pseudo-trie
            hsPkgs.text
            hsPkgs.aeson
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }