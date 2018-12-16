{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "quantities";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 John David Reaver";
      maintainer = "John David Reaver <jdreaver@adlerhorst.com>";
      author = "John David Reaver <jdreaver@adlerhorst.com>";
      homepage = "http://github.com/jdreaver/quantities";
      url = "";
      synopsis = "Unit conversion and manipulation library.";
      description = "A library for creating and manipulating physical\nquantities, which are a numerical value\nassociated with a unit of measurement. Included\nis an expression parser and a huge list of\npredefined quantities with which to parse\nstrings into a Quantity datatype. Once created,\na quantity can be converted to different units\nor queried for its dimensionality. A user can\nalso operate on quantities arithmetically, and\ndoing so uses automatic unit conversion and\nsimplifcation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.quantities)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
          ];
        };
        "hlint" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }