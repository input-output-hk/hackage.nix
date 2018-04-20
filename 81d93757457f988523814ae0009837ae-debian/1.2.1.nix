{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "debian";
          version = "1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
        author = "Jeremy Shaw";
        homepage = "http://src.seereason.com/haskell-debian-3";
        url = "";
        synopsis = "A set of modules for working with Debian control files and packages";
        description = "This version is very out of date and no longer\nsupported. Get latest version from darcs for now.\nModules for parsing Debian control files, resolving\ndependencies, comparing version numbers, and other\nuseful stuff.";
        buildType = "Custom";
      };
      components = {
        debian = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.unix
            hsPkgs.regex-compat
            hsPkgs.bytestring
            hsPkgs.pretty
          ];
        };
      };
    }