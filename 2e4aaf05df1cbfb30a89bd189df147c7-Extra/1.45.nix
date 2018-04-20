{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Extra";
          version = "1.45";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "David Fox <david@seereason.com>";
        author = "David Fox";
        homepage = "http://src.seereason.com/haskell-extra";
        url = "";
        synopsis = "A grab bag of modules.";
        description = "A hodge-podge of functions and modules that do not have a better home";
        buildType = "Simple";
      };
      components = {
        Extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bzlib
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.HUnit
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.pureMD5
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.regex-compat
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.Unixutils
            hsPkgs.zlib
          ];
        };
      };
    }