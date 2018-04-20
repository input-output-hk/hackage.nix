{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "array";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Mutable and immutable arrays";
        description = "In addition to providing the \"Data.Array\" module\n<http://www.haskell.org/onlinereport/haskell2010/haskellch14.html as specified in the Haskell 2010 Language Report>,\nthis package also defines the classes 'IArray' of\nimmutable arrays and 'MArray' of arrays mutable within appropriate\nmonads, as well as some instances of these classes.";
        buildType = "Simple";
      };
      components = {
        array = {
          depends  = [ hsPkgs.base ];
        };
      };
    }