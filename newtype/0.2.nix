{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "newtype";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Darius Jahandarie <djahandarie at gmail>";
        author = "Darius Jahandarie, Conor McBride";
        homepage = "";
        url = "";
        synopsis = "A typeclass and set of functions for working with newtypes.";
        description = "Per Conor McBride, the Newtype typeclass represents the packing and unpacking of a newtype, and allows you to operatate under that newtype with functions such as ala.";
        buildType = "Simple";
      };
      components = {
        newtype = {
          depends  = [ hsPkgs.base ];
        };
      };
    }