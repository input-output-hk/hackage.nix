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
      specVersion = "0";
      identifier = {
        name = "numtype";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Buckwalter 2009-2014";
      maintainer = "bjorn@buckwalter.se";
      author = "Bjorn Buckwalter";
      homepage = "http://dimensional.googlecode.com/";
      url = "";
      synopsis = "Type-level (low cardinality) integers.";
      description = "This package provides unary type level representations of the\n(positive and negative) integers and basic operations (addition,\nsubtraction, multiplication, division) on these.\nDue to the unary implementation the practical size of the\nNumTypes is severely limited making them unsuitable for\nlarge-cardinality applications. If you will be working with\nintegers beyond (-20, 20) this package probably isn't for you.\nIt is, however, eminently suitable for applications such as\nrepresenting physical dimensions (see the 'Dimensional' library).\nRequires GHC 6.6.1 or later.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }