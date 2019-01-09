{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "COrdering"; version = "2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Adrian Hey 2004-2008";
      maintainer = "";
      author = "Adrian Hey";
      homepage = "";
      url = "";
      synopsis = "An algebraic data type similar to Prelude Ordering.";
      description = "Typically this is used as the return type of a combining comparison, which combines two\nvalues if they are deemed equal in some sense. Currently combining comparisons are used\nextensively by the AVL tree package (AvlTree). This package is no longer actively\nmaintained and will be tagged as such as soon as Hackage has this feature.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }