{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "smartconstructor";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015 Frerich Raabe <frerich.raabe@gmail.com>";
        maintainer = "frerich.raabe@gmail.com";
        author = "Frerich Raabe";
        homepage = "http://github.com/frerich/smartconstructor";
        url = "";
        synopsis = "A package exposing a helper function for generating smart constructors.";
        description = "A package exposing a helper function for generating smart constructors.";
        buildType = "Simple";
      };
      components = {
        "smartconstructor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }