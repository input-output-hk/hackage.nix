{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "base-io-access";
          version = "0.2.2.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "bheklilr2@gmail.com";
        author = "Aaron Stevens";
        homepage = "https://github.com/bheklilr/base-io-access";
        url = "";
        synopsis = "The IO functions included in base delimited into small, composable classes";
        description = "An attempt to break up the monolithic IO monad into small, composable classes\nthat can be used to restrict a function to only having access to, say, functions\nto work with the standard pipes, or a function that can access the environment.\nThe motivation for this library is to allow people to make a stricter contract\nthan simply \"this function does IO\", and express through the type system exactly\nwhat IO is being performed.";
        buildType = "Simple";
      };
      components = {
        base-io-access = {
          depends  = [ hsPkgs.base ];
        };
      };
    }