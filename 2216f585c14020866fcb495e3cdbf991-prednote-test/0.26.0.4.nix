{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "prednote-test";
          version = "0.26.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2013-2014 Omari Norman";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/prednote";
        url = "";
        synopsis = "Tests and QuickCheck generators to accompany prednote.";
        description = "These are packaged separately so other packages may depend\non them.";
        buildType = "Simple";
      };
      components = {
        prednote-test = {
          depends  = [
            hsPkgs.base
            hsPkgs.rainbow
            hsPkgs.rainbow-tests
            hsPkgs.text
            hsPkgs.prednote
            hsPkgs.QuickCheck
            hsPkgs.containers
            hsPkgs.quickpull
            hsPkgs.barecheck
          ];
        };
        exes = {
          prednote-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.rainbow
              hsPkgs.rainbow-tests
              hsPkgs.text
              hsPkgs.prednote
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.quickpull
              hsPkgs.barecheck
            ];
          };
          prednote-visual-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.rainbow
              hsPkgs.rainbow-tests
              hsPkgs.text
              hsPkgs.prednote
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.quickpull
              hsPkgs.barecheck
            ];
          };
        };
      };
    }