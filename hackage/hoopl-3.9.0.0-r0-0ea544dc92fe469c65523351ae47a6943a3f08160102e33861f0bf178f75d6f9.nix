{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hoopl";
        version = "3.9.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nr@cs.tufts.edu";
      author = "Norman Ramsey, João Dias, Simon Marlow and Simon Peyton Jones";
      homepage = "http://ghc.cs.tufts.edu/hoopl/";
      url = "";
      synopsis = "A library to support dataflow analysis and optimization";
      description = "Higher-order optimization library\n\nChanges in 3.9.0.0\n\n* Lots of API changes; mainly a new API for working with Blocks";
      buildType = "Simple";
    };
    components = {
      "hoopl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }