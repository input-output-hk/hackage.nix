{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      butcher-dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "butcher";
          version = "1.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2016-2017 Lennart Spitzner";
        maintainer = "Lennart Spitzner <hexagoxel@hexagoxel.de>";
        author = "Lennart Spitzner";
        homepage = "https://github.com/lspitzner/butcher/";
        url = "";
        synopsis = "Chops a command or program invocation into digestable pieces.";
        description = "See the <https://github.com/lspitzner/butcher/blob/master/README.md README> (it is properly formatted on github).";
        buildType = "Simple";
      };
      components = {
        butcher = {
          depends  = [
            hsPkgs.base
            hsPkgs.free
            hsPkgs.unsafe
            hsPkgs.microlens
            hsPkgs.microlens-th
            hsPkgs.multistate
            hsPkgs.pretty
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.extra
            hsPkgs.void
            hsPkgs.bifunctors
            hsPkgs.deque
          ] ++ pkgs.lib.optional _flags.butcher-dev hsPkgs.hspec;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.butcher
              hsPkgs.free
              hsPkgs.unsafe
              hsPkgs.microlens
              hsPkgs.microlens-th
              hsPkgs.multistate
              hsPkgs.pretty
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.extra
              hsPkgs.deque
            ] ++ pkgs.lib.optional _flags.butcher-dev hsPkgs.hspec;
          };
        };
      };
    }