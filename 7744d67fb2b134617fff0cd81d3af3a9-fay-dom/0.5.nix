{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fay-dom";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Adam Bergmark";
        maintainer = "adam@bergmark.nl";
        author = "Adam Bergmark";
        homepage = "https://github.com/faylang/fay-dom";
        url = "";
        synopsis = "DOM FFI wrapper library for Fay";
        description = "DOM FFI wrapper library for Fay";
        buildType = "Simple";
      };
      components = {
        fay-dom = {
          depends  = [ hsPkgs.fay-base ];
        };
      };
    }