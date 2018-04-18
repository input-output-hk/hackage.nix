{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      mtl = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "effin";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Anthony Vandikas";
        maintainer = "yellpika@gmail.com";
        author = "Anthony Vandikas";
        homepage = "https://github.com/YellPika/effin";
        url = "";
        synopsis = "A Typeable-free implementation of extensible effects";
        description = "A Typeable-free implementation of extensible effects";
        buildType = "Simple";
      };
      components = {
        effin = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional _flags.mtl hsPkgs.mtl;
        };
      };
    }