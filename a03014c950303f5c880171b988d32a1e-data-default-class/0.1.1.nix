{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-default-class";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<l.mai@web.de>";
        author = "Lukas Mai";
        homepage = "";
        url = "";
        synopsis = "A class for types with a default value";
        description = "";
        buildType = "Simple";
      };
      components = {
        data-default-class = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }