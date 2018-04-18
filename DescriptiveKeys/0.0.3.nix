{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "DescriptiveKeys";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://bitbucket.org/dibblego/descriptive-keys/";
        url = "";
        synopsis = "A library for specifying xmonad key bindings with functionality.";
        description = "A library for specifying xmonad key bindings with search and help functions.";
        buildType = "Simple";
      };
      components = {
        DescriptiveKeys = {
          depends  = [
            hsPkgs.base
            hsPkgs.xmonad
            hsPkgs.xmonad-contrib
            hsPkgs.containers
          ];
        };
      };
    }