{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "arbb-vm";
          version = "0.1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Intel Corporation";
        maintainer = "Joel Svensson<svensson.bj@gmail.com>";
        author = "Joel Svensson<svensson.bj@gmail.com>";
        homepage = "git://github.com/svenssonjoel/arbb-vm/wiki";
        url = "";
        synopsis = "FFI binding to the Intel Array Building Blocks (ArBB) virtual machine.";
        description = "DESCRIPTION GOES HERE.";
        buildType = "Simple";
      };
      components = {
        "arbb-vm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.pretty
          ];
        };
      };
    }