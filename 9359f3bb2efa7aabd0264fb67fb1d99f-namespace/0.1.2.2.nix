{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "namespace";
          version = "0.1.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Hao Xu";
        maintainer = "xuh@email.unc.edu";
        author = "Hao Xu";
        homepage = "https://github.com/xu-hao/namespace";
        url = "";
        synopsis = "A Generic Haskell library for managing namespaces";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "namespace" = {
          depends  = [
            hsPkgs.base
            hsPkgs.monoid-extras
            hsPkgs.containers
          ];
        };
        tests = {
          "namespace-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.namespace
            ];
          };
        };
      };
    }