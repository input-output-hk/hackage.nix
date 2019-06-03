{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { semigroupoids = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "semialign"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "C. McCann, Oleg Grenrus";
      homepage = "https://github.com/isomorphism/these";
      url = "";
      synopsis = "Align and Zip type-classes from the common Semialign ancestor.";
      description = "The major use of @These@ of this is provided by the @align@ member of\n@Semialign@ class, representing a generalized notion of \"zipping with padding\"\nthat combines structures without truncating to the size of the smaller input.\n\nIt turns out that @zip@ operation fits well the @Semialign@ class,\nforming lattice-like structure.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.these)
          (hsPkgs.base-compat)
          (hsPkgs.hashable)
          (hsPkgs.tagged)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.2")) (hsPkgs.bifunctors)) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) ([
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.10") (hsPkgs.transformers))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.5") (hsPkgs.ghc-prim)) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs.semigroupoids);
        };
      };
    }