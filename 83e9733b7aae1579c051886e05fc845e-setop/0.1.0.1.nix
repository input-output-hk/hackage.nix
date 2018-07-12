{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "setop";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "(c) 2017 Médéric Hurier";
        maintainer = "Médéric Hurier <fmind@users.noreply.github.com>";
        author = "Médéric Hurier <fmind@users.noreply.github.com>";
        homepage = "https://github.com/fmind/setop";
        url = "";
        synopsis = "Perform set operations on files.";
        description = "Find more information on the project homepage.";
        buildType = "Simple";
      };
      components = {
        "setop" = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.containers
          ];
        };
        exes = {
          "setop" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.protolude
              hsPkgs.optparse-applicative
              hsPkgs.setop
            ];
          };
        };
        tests = {
          "hspec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.protolude
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.setop
            ];
          };
          "hlint" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }