{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "annotated-fix"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "guerric.chupin@gmail.com";
      author = "Guerric Chupin";
      homepage = "";
      url = "";
      synopsis = "A fixpoint of a functor that can be annotated";
      description = "This library exposes a type representing the fixpoint\nof a functor, with an annotation at every node.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.recursion-schemes) ]; };
      };
    }