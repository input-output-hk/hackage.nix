{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ja-base-extra";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dev@justus.science";
        author = "Justus Adam";
        homepage = "";
        url = "";
        synopsis = "Extra functions I require in base";
        description = "This package encompasses a collection of general functions\nthat only depend on the base library, which I have\nacumulated through writing Haskell code and judged general\nand useful enough to extract.";
        buildType = "Simple";
      };
      components = {
        ja-base-extra = {
          depends  = [ hsPkgs.base ];
        };
      };
    }