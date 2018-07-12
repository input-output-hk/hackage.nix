{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "language-bash";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013-2015 Kyle Raftogianis";
        maintainer = "Kyle Raftogianis <kylerafto@gmail.com>";
        author = "Kyle Raftogianis";
        homepage = "http://github.com/knrafto/language-bash/";
        url = "";
        synopsis = "Parsing and pretty-printing Bash shell scripts";
        description = "A library for parsing, pretty-printing, and manipulating\nBash shell scripts.";
        buildType = "Simple";
      };
      components = {
        "language-bash" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.transformers
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-bash
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }