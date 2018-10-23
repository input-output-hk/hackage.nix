{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.1";
      identifier = {
        name = "zipper";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "generics@haskell.org";
      author = "Alexey Rodriguez,\nStefan Holdermans,\nAndres Löh,\nJohan Jeuring";
      homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/Multirec";
      url = "";
      synopsis = "Generic zipper for systems of recursive datatypes";
      description = "The Zipper is a data structure that allows typed navigation on a value.\nIt maintains a subterm as a current point of focus. The rest of the value\nis the context. Focus and context are automatically updated when navigating\nup, down, left or right in the value. The term that is in focus can also\nbe modified.\n\nThis library offers a generic Zipper for systems of datatypes. In particular,\nit is possible to move the focus between subterms of different types, in an\nentirely type-safe way. This library is built on top of the multirec library,\nso all that is required to get a Zipper for a datatype system is to instantiate\nthe multirec library for that system.";
      buildType = "Simple";
    };
    components = {
      "zipper" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.multirec)
        ];
      };
    };
  }