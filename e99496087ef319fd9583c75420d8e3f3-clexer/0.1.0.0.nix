{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "clexer";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "thomasedingcode@gmail.com";
        author = "Thomas Eding";
        homepage = "";
        url = "";
        synopsis = "Lexes C++ code into simple tokens";
        description = "";
        buildType = "Simple";
      };
      components = {
        clexer = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.parsec
          ];
        };
      };
    }