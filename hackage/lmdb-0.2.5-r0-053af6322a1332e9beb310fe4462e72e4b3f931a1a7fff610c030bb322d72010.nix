{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16.0.3";
      identifier = {
        name = "lmdb";
        version = "0.2.5";
      };
      license = "BSD-2-Clause";
      copyright = "(c) 2014 by David Barbour";
      maintainer = "dmbarbour@gmail.com";
      author = "David Barbour";
      homepage = "http://github.com/dmbarbour/haskell-lmdb";
      url = "";
      synopsis = "Lightning MDB bindings";
      description = "LMDB is a read-optimized Berkeley DB replacement developed by Symas\nfor the OpenLDAP project. LMDB has impressive performance characteristics\nand a friendly BSD-style OpenLDAP license. See <http://symas.com/mdb/>.\n\nThis library has Haskell bindings to the LMDB library. You must install\nthe lmdb development files before installing this library,\ne.g. `sudo apt-get install liblmdb-dev` works for Ubuntu 14.04.\n\nFor now, only a low level interface is provided, and the author is moving\non to use LMDB rather than further develop its bindings. If a higher level\nAPI is desired, please consider contributing, or develop a separate package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
        libs = [ (pkgs."lmdb") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }