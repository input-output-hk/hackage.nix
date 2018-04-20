{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "windowslive";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "joshhoyt@gmail.com";
        author = "Josh Hoyt";
        homepage = "http://patch-tag.com/repo/windowslive";
        url = "";
        synopsis = "Implements Windows Live Web Authentication and\nDelegated Authentication";
        description = "Implements functions for initiating and processing\nWeb Authentication requests, as well as Delegated\nAuthentication. See\n<http://msdn.microsoft.com/en-us/library/bb404787.aspx>";
        buildType = "Custom";
      };
      components = {
        windowslive = {
          depends  = [
            hsPkgs.base
            hsPkgs.Crypto
            hsPkgs.dataenc
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.pretty
            hsPkgs.split
            hsPkgs.time
            hsPkgs.parsec
            hsPkgs.HUnit
            hsPkgs.urlencoded
          ];
        };
        exes = { test = {}; };
      };
    }