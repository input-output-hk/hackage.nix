{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "alex-tools";
          version = "0.1.0.0";
        };
        license = "ISC";
        copyright = "Iavor S. Diatchki, 2016";
        maintainer = "iavor.diatchki@gmail.com";
        author = "Iavor S. Diatchki";
        homepage = "";
        url = "";
        synopsis = "A set of functions for a common use case of Alex.";
        description = "This captures a common pattern for using Alex with Text.";
        buildType = "Simple";
      };
      components = {
        alex-tools = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.template-haskell
          ];
        };
      };
    }