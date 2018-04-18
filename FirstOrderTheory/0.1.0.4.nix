{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "FirstOrderTheory";
          version = "0.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dillonhuff@gmail.com";
        author = "Dillon Huff";
        homepage = "";
        url = "";
        synopsis = "Grammar and typeclass for first order theories";
        description = "Grammar and typeclass for first order theories";
        buildType = "Simple";
      };
      components = {
        FirstOrderTheory = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }