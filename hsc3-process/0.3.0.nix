{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsc3-process";
          version = "0.3.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) Stefan Kersten 2008-2009";
        maintainer = "Stefan Kersten";
        author = "Stefan Kersten";
        homepage = "http://code.haskell.org/~StefanKersten/code/hsc3-process";
        url = "";
        synopsis = "Create and control scsynth processes";
        description = "Create and control scsynth processes.";
        buildType = "Simple";
      };
      components = {
        hsc3-process = {
          depends  = [
            hsPkgs.base
            hsPkgs.ConfigFile
            hsPkgs.containers
            hsPkgs.data-accessor
            hsPkgs.data-accessor-template
            hsPkgs.hosc
            hsPkgs.hsc3
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.template-haskell
            hsPkgs.transformers
          ];
        };
      };
    }