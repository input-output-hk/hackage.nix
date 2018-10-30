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
      specVersion = "1.2";
      identifier = {
        name = "PropLogic";
        version = "0.9.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "b@bucephalus.org";
      author = "bucephalus";
      homepage = "http://www.bucephalus.org/PropLogic";
      url = "";
      synopsis = "A system for propositional logic with default and fast instances of propositional algebras.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.random)
        ];
      };
      exes = { "program" = {}; };
    };
  }