{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "these-skinny";
          version = "0.7.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "chessai1996@gmail.com";
        author = "C. McCann";
        homepage = "https://github.com/chessai/these-skinny";
        url = "";
        synopsis = "A fork of the 'these' package without the dependency bloat.";
        description = "This package provides a data type @These a b@ which can hold a value of either\ntype or values of each type. This is usually thought of as an \"inclusive or\"\ntype (contrasting @Either a b@ as \"exclusive or\") or as an \"outer join\" type\n(contrasting @(a, b)@ as \"inner join\").";
        buildType = "Simple";
      };
      components = {
        "these-skinny" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
      };
    }