{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9";
      identifier = { name = "PropLogic"; version = "0.9.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "b@bucephalus.org";
      author = "bucephalus";
      homepage = "http://www.bucephalus.org/PropLogic";
      url = "";
      synopsis = "Propositional Logic";
      description = "A system for propositional logic with default and fast instances of propositional algebras.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.old-time) (hsPkgs.random) ];
        };
      exes = {
        "program" = {
          depends = [ (hsPkgs.base) (hsPkgs.old-time) (hsPkgs.random) ];
          };
        };
      };
    }