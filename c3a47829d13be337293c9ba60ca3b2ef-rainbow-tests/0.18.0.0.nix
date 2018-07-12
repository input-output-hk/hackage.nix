{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "rainbow-tests";
          version = "0.18.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2013 - 2014 Omari Norman";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/rainbow";
        url = "";
        synopsis = "Tests and QuickCheck generators to accompany rainbow.";
        description = "These are packaged separately so other packages may depend\non them.";
        buildType = "Simple";
      };
      components = {
        "rainbow-tests" = {
          depends  = [
            hsPkgs.base
            hsPkgs.terminfo
            hsPkgs.text
            hsPkgs.rainbow
            hsPkgs.QuickCheck
            hsPkgs.barecheck
          ];
        };
      };
    }