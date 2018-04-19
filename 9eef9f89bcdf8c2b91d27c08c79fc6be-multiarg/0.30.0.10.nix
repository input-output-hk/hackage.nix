{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      programs = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "multiarg";
          version = "0.30.0.10";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2011-2015 Omari Norman";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "https://github.com/massysett/multiarg";
        url = "";
        synopsis = "Command lines for options that take multiple arguments";
        description = "multiarg helps you build command-line parsers for\nprograms with options that take more than one argument.\nSee the documentation in the Multiarg module for details.";
        buildType = "Simple";
      };
      components = {
        multiarg = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          grover = {
            depends  = pkgs.lib.optionals _flags.programs [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
            ];
          };
          telly = {
            depends  = pkgs.lib.optionals _flags.programs [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
            ];
          };
        };
        tests = {
          multiarg-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
            ];
          };
        };
      };
    }