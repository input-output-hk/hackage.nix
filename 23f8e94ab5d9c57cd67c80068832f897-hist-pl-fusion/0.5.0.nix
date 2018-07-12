{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hist-pl-fusion";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/hist-pl/tree/master/fusion";
        url = "";
        synopsis = "Merging historical dictionary with PoliMorf";
        description = "The library provides functions for merging historical dictionary\nwith PoliMorf morphological dictionary.";
        buildType = "Simple";
      };
      components = {
        "hist-pl-fusion" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.binary
            hsPkgs.text-binary
            hsPkgs.dawg
            hsPkgs.polimorf
            hsPkgs.hist-pl-dawg
            hsPkgs.hist-pl-lexicon
          ];
        };
      };
    }