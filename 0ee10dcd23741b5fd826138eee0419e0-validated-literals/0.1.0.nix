{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "validated-literals";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2015 Merijn Verstraaten";
        maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
        author = "Merijn Verstraaten";
        homepage = "https://github.com/merijn/validated-literals";
        url = "";
        synopsis = "Compile-time checking for partial smart-constructors";
        description = "";
        buildType = "Simple";
      };
      components = {
        "validated-literals" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.bytestring
          ];
        };
      };
    }