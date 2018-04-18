{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Unixutils-shadow";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw, David Fox";
        homepage = "http://src.seereason.com/haskell-unixutils-shadow";
        url = "";
        synopsis = "A simple interface to shadow passwords (aka, shadow.h)";
        description = "Provides the ability to read a user entry from the shadow password database";
        buildType = "Simple";
      };
      components = {
        Unixutils-shadow = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
        };
      };
    }