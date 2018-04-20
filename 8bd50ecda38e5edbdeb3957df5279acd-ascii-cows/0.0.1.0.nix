{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ascii-cows";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Pascal Hartig <phartig@rdrei.net>";
        author = "Pascal Hartig";
        homepage = "http://github.com/passy/cows-hs";
        url = "";
        synopsis = "A collection of ASCII cows. Moo.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        ascii-cows = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.random-fu
            hsPkgs.random-extras
          ];
        };
      };
    }