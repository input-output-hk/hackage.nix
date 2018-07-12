{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      arrow-tr = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "machinecell";
          version = "3.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014 Hidenori Azuma";
        maintainer = "Hidenori Azuma <as.capabl@gmail.com>";
        author = "Hidenori Azuma";
        homepage = "http://github.com/as-capabl/machinecell";
        url = "";
        synopsis = "Arrow based stream transducers";
        description = "Stream processing library similar to pipes, couduit, or machines.\n\nArrow combinatins are supported and can be used with the arrow notation.\nAFRP-like utilities are also available.\n\nA quick introduction is available in the Control.Arrow.Machine documentation.";
        buildType = "Simple";
      };
      components = {
        "machinecell" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.free
            hsPkgs.semigroups
            hsPkgs.profunctors
            hsPkgs.transformers
          ] ++ pkgs.lib.optional _flags.arrow-tr hsPkgs.arrows;
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.profunctors
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.arrows
              hsPkgs.semigroups
              hsPkgs.machinecell
            ];
          };
        };
      };
    }