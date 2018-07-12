{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sylvia";
          version = "0.2.2";
        };
        license = "LicenseRef-GPL";
        copyright = "2012 Chris Wong";
        maintainer = "chrisyco@gmail.com";
        author = "Chris Wong";
        homepage = "https://github.com/lfairy/sylvia";
        url = "";
        synopsis = "Lambda calculus visualization";
        description = "The Simple Yuser-friendly Lambda Visualization Interaction Application (SYLVIA)\nis a unique way to manipulate untyped lambda calculus expressions, by\nrepresenting them as boxes connected by wires.\n\nIt is an implementation of an idea by Keenan (1996). See\n<http://dkeenan.com/Lambda> for the theory behind this application.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "sylvia" = {
            depends  = [
              hsPkgs.base
              hsPkgs.comonad-transformers
              hsPkgs.data-default
              hsPkgs.data-lens
              hsPkgs.data-lens-template
              hsPkgs.optparse-applicative
              hsPkgs.parsec
              hsPkgs.transformers
              hsPkgs.void
              hsPkgs.cairo
              hsPkgs.gtk
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.void
              hsPkgs.parsec
              hsPkgs.test-framework
              hsPkgs.test-framework-smallcheck
              hsPkgs.smallcheck
            ];
          };
        };
      };
    }