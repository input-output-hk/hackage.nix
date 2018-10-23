{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "genericserialize";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stefan O'Rear <stefanor@cox.net>";
      author = "Stefan O'Rear";
      homepage = "";
      url = "";
      synopsis = "Serialization library using Data.Generics";
      description = "GenericSerialize is a library for serialization using the\nexisting generic-programming framework.\n\nIt is often advocated that support for serialization should be added to\nthe compiler (e.g. in the form of a deriving(Binary)).  With this I\nintend to show that the existing infrastructure is sufficient, and\nhas some advantages over a dedicated serialization interface.\n\nThe main advantage that generic serialization posseses is that it is\npossible to simultaneously have several serialization modes.  While\ninterfaces such as AltBinary allow writing to any type of stream, the\ndata format is fixed.  By contrast, GenericSerialize supports multiple\nserialization modes; while the only currently existing module is for a\nsubset of R5RS s-expressions, that module is less than 100 lines of code\nand is almost pure grammar.";
      buildType = "Simple";
    };
    components = {
      "genericserialize" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }