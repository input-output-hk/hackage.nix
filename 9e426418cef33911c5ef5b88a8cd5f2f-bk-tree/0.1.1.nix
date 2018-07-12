{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "bk-tree";
          version = "0.1.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Francesco Mazzoli (f@mazzo.li)";
        author = "Francesco Mazzoli (f@mazzo.li)";
        homepage = "https://github.com/bitonic/language-spelling";
        url = "";
        synopsis = "BK-tree implementation";
        description = "BK-tree implementation.";
        buildType = "Simple";
      };
      components = {
        "bk-tree" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }