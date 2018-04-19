{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "prednote-test";
          version = "0.24.0.0";
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
            ];
          };
        };
      };
    }