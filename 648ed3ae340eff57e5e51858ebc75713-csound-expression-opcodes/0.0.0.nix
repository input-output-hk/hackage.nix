{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "csound-expression-opcodes";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<anton.kholomiov@gmail.com>";
        author = "Anton Kholomiov";
        homepage = "";
        url = "";
        synopsis = "opcodes for the library csound-expression";
        description = "opcodes for the library csound-expression";
        buildType = "Simple";
      };
      components = {
        "csound-expression-opcodes" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.csound-expression-typed
            hsPkgs.csound-expression-dynamic
          ];
        };
      };
    }