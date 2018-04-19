{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "onu-course";
          version = "1";
        };
        license = "MIT";
        copyright = "Addison Wesley; Roman Cheplyaka";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Roman Cheplyaka";
        homepage = "";
        url = "";
        synopsis = "Code for the Haskell course taught at the Odessa National University in 2012";
        description = "Based on <http://hackage.haskell.org/package/Craft3e>";
        buildType = "Simple";
      };
      components = {
        onu-course = {
          depends  = [
            hsPkgs.base
            hsPkgs.smallcheck
          ];
        };
      };
    }