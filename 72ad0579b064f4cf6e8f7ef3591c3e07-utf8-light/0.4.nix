{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.5";
        identifier = {
          name = "utf8-light";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Matt Morrow";
        maintainer = "Matt Morrow <mjm2002@gmail.com>";
        author = "Matt Morrow";
        homepage = "";
        url = "";
        synopsis = "Unicode";
        description = "Lightweight UTF8 handling.";
        buildType = "Simple";
      };
      components = {
        utf8-light = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.bytestring
          ];
        };
      };
    }