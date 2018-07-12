{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "open-witness";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ashley Yakeley <ashley@semantic.org>";
        author = "Ashley Yakeley <ashley@semantic.org>";
        homepage = "";
        url = "";
        synopsis = "open witnesses";
        description = "Open witnesses are witnesses that can witness to any type. However, they cannot be constructed, they can only be generated in the IO monad.\nSee the paper /Witnesses and Open Witnesses/ (<http://semantic.org/stuff/Open-Witnesses.pdf>).";
        buildType = "Simple";
      };
      components = {
        "open-witness" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.witness
          ];
        };
      };
    }