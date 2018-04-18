{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.20";
        identifier = {
          name = "haskus-utils";
          version = "0.7.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Sylvain Henry 2017";
        maintainer = "sylvain@haskus.fr";
        author = "Sylvain Henry";
        homepage = "http://www.haskus.org/system";
        url = "";
        synopsis = "Haskus utility modules";
        description = "Various utility modules used by Haskus packages.";
        buildType = "Simple";
      };
      components = {
        haskus-utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.list-t
            hsPkgs.stm
            hsPkgs.stm-containers
            hsPkgs.vector
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.file-embed
            hsPkgs.extra
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskus-utils
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }