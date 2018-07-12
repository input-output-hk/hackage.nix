{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pointfree-fancy";
          version = "1.1.1.4";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Vanessa McHale <vanessa.mchale@reconfigure.io>";
        author = "Thomas Jäger";
        homepage = "";
        url = "";
        synopsis = "Tool for refactoring expressions into pointfree form";
        description = "The pointfree tool is a standalone command-line version of the pl\nplugin for lambdabot. This fork extends it to include several functions for\nhigher-order composition not in the prelude.";
        buildType = "Simple";
      };
      components = {
        "pointfree-fancy" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.haskell-src-exts
            hsPkgs.transformers
          ];
        };
        exes = {
          "pointfree" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.haskell-src-exts
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.haskell-src-exts
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.transformers
            ];
          };
        };
      };
    }