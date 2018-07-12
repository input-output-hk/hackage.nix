{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Extra";
          version = "1.30";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "David Fox <david@seereason.com>";
        author = "David Fox";
        homepage = "http://seereason.org/";
        url = "";
        synopsis = "A grab bag of modules.";
        description = "A hodge-podge of functions and modules that do not have a better home";
        buildType = "Simple";
      };
      components = {
        "Extra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.regex-compat
            hsPkgs.time
            hsPkgs.Unixutils
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.HaXml
            hsPkgs.pretty
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.process
            hsPkgs.containers
            hsPkgs.old-time
            hsPkgs.old-locale
            hsPkgs.QuickCheck
            hsPkgs.HUnit
            hsPkgs.random
            hsPkgs.filepath
          ];
        };
      };
    }