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
        name = "nat";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jan Christiansen <jac@informatik.uni-kiel.de>";
      author = "Andres Loeh, Frank Huch, Jan Christiansen";
      homepage = "http://www-ps.informatik.uni-kiel.de/currywiki/tools/strictcheck";
      url = "";
      synopsis = "Lazy binary natural numbers";
      description = "Implementation of natural numbers and integers by a binary\nrepresentation. All functions are supposed to be as non-strict as\npossible. Furthermore the implementation is supposed to be\nreasonable efficient (in comparison to peano numbers). This\nimplementation is inspired by a similar approach in the functional\nlogic programming language Curry.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }