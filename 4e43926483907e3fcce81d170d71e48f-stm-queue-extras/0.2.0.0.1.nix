{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stm-queue-extras";
          version = "0.2.0.0.1";
        };
        license = "Apache-2.0";
        copyright = "Copyright (c) 2014 PivotCloud, Inc.";
        maintainer = "jon@jonmsterling.com";
        author = "Jon Sterling";
        homepage = "";
        url = "";
        synopsis = "Extra queue utilities for STM";
        description = "Granular signatures for STM queues";
        buildType = "Simple";
      };
      components = {
        stm-queue-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.stm-chans
          ];
        };
      };
    }