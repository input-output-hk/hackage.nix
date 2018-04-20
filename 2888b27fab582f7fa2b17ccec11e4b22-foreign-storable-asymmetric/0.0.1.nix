{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "foreign-storable-asymmetric";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andrew Miller (andrew.miller@lanthaps.com)";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Types and instances for implementing a Storable with different peek and poke";
        description = "Utilities useful for working with unioned data structures, where you want to use a different peek and poke. This is particularly useful for use with the ioctl package if you have an ioctl that provides output of a different type to the input.";
        buildType = "Simple";
      };
      components = {
        foreign-storable-asymmetric = {
          depends  = [ hsPkgs.base ];
        };
      };
    }