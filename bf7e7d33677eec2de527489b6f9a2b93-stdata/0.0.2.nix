{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "stdata";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "david.darais@gmail.com";
        author = "David Darais";
        homepage = "";
        url = "";
        synopsis = "Structure Data Library";
        description = "Contains datatypes and quasi-quoting functionaly for\nstandard s-expressions and nested structured/unstructured data";
        buildType = "Simple";
      };
      components = {
        stdata = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.parsec
          ];
        };
      };
    }