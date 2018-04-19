{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "haltavista";
          version = "0.1.0.1";
        };
        license = "GPL-2.0-only";
        copyright = "Paul Brauner and Jun Inoue";
        maintainer = "polux2001@gmail.com";
        author = "Paul Brauner\nJun Inoue";
        homepage = "";
        url = "";
        synopsis = "looks for functions given a set of example input/outputs";
        description = "Looks for functions in the local hoogle library given a set of example input/outputs.\nRequires hoogle.\n\nUsage:\n\n> ~\$ haltavista\n> input_1_1 ... input_1_n output_1\n> ...\n> input_m_1 ... input_m_n output_m\n> <EOF>\n\nExample usage:\n\n> ~\$ haltavista\n> 1 1 2\n> 1 2 3\n> <EOF>\n>\n> Prelude (+)\n\nSee README.md for more examples.";
        buildType = "Simple";
      };
      components = {
        exes = {
          haltavista = {
            depends  = [
              hsPkgs.base
              hsPkgs.hint
              hsPkgs.process
            ];
          };
        };
      };
    }