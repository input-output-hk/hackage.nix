{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fay-jquery";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Adam Bergmark, Brian Victor, Chris Done";
        maintainer = "Adam Bergmark";
        author = "Adam Bergmark, Brian Victor, Chris Done";
        homepage = "https://github.com/faylang/fay-jquery";
        url = "";
        synopsis = "jQuery bindings for Fay.";
        description = "jQuery bindings for Fay.";
        buildType = "Simple";
      };
      components = {
        fay-jquery = {
          depends  = [
            hsPkgs.fay-base
            hsPkgs.fay-text
          ];
        };
      };
    }