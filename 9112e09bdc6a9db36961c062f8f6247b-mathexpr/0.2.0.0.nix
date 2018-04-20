{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mathexpr";
          version = "0.2.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "2016 Mahdi Dibaiee";
        maintainer = "mdibaiee@aol.com";
        author = "Mahdi Dibaiee";
        homepage = "https://github.com/mdibaiee/mathexpr";
        url = "";
        synopsis = "Parse and evaluate math expressions with variables and functions";
        description = "A simple tool to evaluate math expressions as strings with support for custom functions and operators";
        buildType = "Simple";
      };
      components = {
        mathexpr = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default-class
          ];
        };
      };
    }