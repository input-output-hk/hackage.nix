{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bool8";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "Alternative Bool type stored as byte";
      description = "The standard 'Bool' type has a 'Storable' instance\nthat requires the size of @HTYPE_INT@,\ni.e. usually four bytes or even more.\nThis package provides 'Bool8',\na boolean type with an 8 bit representation in memory.\nIt is not a drop-in replacement for 'Bool' though.\nYou have to convert from or to 'Bool' occasionally.";
      buildType = "Simple";
    };
    components = {
      "bool8" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }