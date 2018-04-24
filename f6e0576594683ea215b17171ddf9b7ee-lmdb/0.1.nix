{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16.0.3";
        identifier = {
          name = "lmdb";
          version = "0.1";
        };
        license = "BSD-2-Clause";
        copyright = "(c) 2014 by David Barbour";
        maintainer = "dmbarbour@gmail.com";
        author = "David Barbour";
        homepage = "http://github.com/dmbarbour/haskell-lmdb";
        url = "";
        synopsis = "Lightning MDB bindings";
        description = "LMDB is a read-optimized Berkeley DB replacement developed by Sysmas\nfor the OpenLDAP project. LMDB has impressive performance characteristics\nand a friendly BSD-style license.\nYou will need to install the lmdb development files to install this\nlibrary, e.g. `sudo apt-get install liblmdb-dev` works for Ubuntu 14.04\nAt the moment, only a raw, low-level interface to LMDB is supported.";
        buildType = "Simple";
      };
      components = {
        lmdb = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.array
          ];
          libs = [ pkgs.lmdb ];
          build-tools = [ hsPkgs.hsc2hs ];
        };
      };
    }