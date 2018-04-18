{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsc3-process";
          version = "0.4.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) Stefan Kersten 2008-2010";
        maintainer = "Stefan Kersten";
        author = "Stefan Kersten";
        homepage = "http://space.k-hornz.de/software/hsc3-process";
        url = "";
        synopsis = "Create and control scsynth processes";
        description = "Create and control scsynth processes.";
        buildType = "Simple";
      };
      components = {
        hsc3-process = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-sc3
            hsPkgs.bytestring
            hsPkgs.ConfigFile
            hsPkgs.containers
            hsPkgs.data-accessor
            hsPkgs.data-accessor-template
            hsPkgs.data-accessor-mtl
            hsPkgs.hosc
            hsPkgs.hsc3
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.regex-compat
            hsPkgs.template-haskell
          ];
        };
      };
    }