{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "numtype-tf"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Buckwalter 2012";
      maintainer = "bjorn.buckwalter@gmail.com";
      author = "Bjorn Buckwalter";
      homepage = "http://dimensional.googlecode.com/";
      url = "";
      synopsis = "Type-level (low cardinality) integers, implemented\nusing type families.";
      description = "This package provides unary type level representations of the\n(positive and negative) integers and basic operations (addition,\nsubtraction, multiplication, division) on these.\nDue to the unary implementation the practical size of the\nNumTypes is severely limited making them unsuitable for\nlarge-cardinality applications. If you will be working with\nintegers beyond (-20, 20) this package probably isn't for you.\nThe numtype-tf packade differs from the numtype package in that\nthe NumTypes are implemented using type families rather than\nfunctional dependencies.\nRequires GHC 7.0 or later.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }