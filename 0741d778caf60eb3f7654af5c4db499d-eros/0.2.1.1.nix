{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eros";
          version = "0.2.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014, Peter Harpending.";
        maintainer = "Peter Harpending <pharpend2@gmail.com>";
        author = "Peter Harpending";
        homepage = "";
        url = "";
        synopsis = "A text censorship library.";
        description = "A Haskell library for censoring text, using\n<http://contentfilter.futuragts.com/phraselists/ DansGuardian phraselists>.\nI converted the phraselists into JSON. You can view the converted phraselists\n<https://github.com/pharpend/eros/tree/master/res/phraselists-pretty here>.\nThere exist compressed versions, for use within your code. You can see the\ncompressed versions\n<https://github.com/pharpend/eros/tree/master/res/phraselists-ugly here>.";
        buildType = "Simple";
      };
      components = {
        "eros" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
          ];
        };
        exes = {
          "erosc" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.eros
              hsPkgs.text
            ];
          };
        };
        tests = {
          "test-eros" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.eros
              hsPkgs.QuickCheck
              hsPkgs.text
            ];
          };
        };
      };
    }