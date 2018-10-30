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
        name = "fingertree";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2006 Ross Paterson, Ralf Hinze";
      maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Generic finger-tree structure";
      description = "A general sequence representation with arbitrary\nannotations, for use as a base for implementations of\nvarious collection types, as described in section 4 of\n\n* Ralf Hinze and Ross Paterson,\n\\\"Finger trees: a simple general-purpose data structure\\\",\n/Journal of Functional Programming/ 16:2 (2006) pp 197-217.\n<http://www.soi.city.ac.uk/~ross/papers/FingerTree.html>\n\nFor a directly usable sequence type, see \"Data.Sequence\"\nin the @base@ package, which is a specialization of\nthis structure.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }