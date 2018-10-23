{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "superconstraints";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Ryan Trinkle";
      maintainer = "Ryan Trinkle <ryan.trinkle@gmail.com>";
      author = "Ryan Trinkle";
      homepage = "http://github.com/ryantrinkle/superconstraints";
      url = "";
      synopsis = "Access an instance's constraints";
      description = "Constraint manipulation";
      buildType = "Simple";
    };
    components = {
      "superconstraints" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.type-eq)
          (hsPkgs.tagged)
        ];
      };
    };
  }