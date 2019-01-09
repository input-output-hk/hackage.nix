{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "action-permutations"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
      author = "Ross Paterson <ross@soi.city.ac.uk>";
      homepage = "";
      url = "";
      synopsis = "Execute a set of actions (e.g. parsers) in each possible order";
      description = "Sequence a set of Alternative actions in each possible order,\nbased on \\\"Parsing Permutation Phrases\\\", by Arthur Baars,\nAndres Loeh and S. Doaitse Swierstra, /Haskell Workshop 2001/.\nThis is particularly useful for constructing a parser for\npermutations of elements.\nThis version has a slightly different interface from the paper.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }