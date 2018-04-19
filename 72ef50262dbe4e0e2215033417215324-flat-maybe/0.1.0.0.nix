{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "flat-maybe";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 András Kovács";
        maintainer = "puttamalac@gmail.com";
        author = "András Kovács";
        homepage = "https://github.com/AndrasKovacs/flat-maybe";
        url = "";
        synopsis = "Strict Maybe without space and indirection overhead";
        description = "Strict Maybe without space and indirection overhead.\nInspired by Rust's Option, which is represented by\neither a pointer to the object or a specific \"null\" pointer.\nThe implementation is a giant unsafe trick.";
        buildType = "Simple";
      };
      components = {
        flat-maybe = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }