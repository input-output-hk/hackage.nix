{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "string-combinators";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "2009-2010 Bas van Dijk <v.dijk.bas@gmail.com>";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk <v.dijk.bas@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Polymorphic functions to build and combine string-like values";
        description = "@string-combinators@ provides handy polymorphic functions\nto build and combine string-like values.\n\nAll functions are polymorphic in their string-like type\nbut usually have a 'Monoid' or 'IsString' constraint.";
        buildType = "Simple";
      };
      components = {
        string-combinators = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
          ];
        };
      };
    }