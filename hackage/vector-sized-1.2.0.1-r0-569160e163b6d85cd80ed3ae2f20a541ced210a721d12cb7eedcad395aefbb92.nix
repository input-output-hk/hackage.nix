{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vector-sized"; version = "1.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Joe Hermaszewski";
      maintainer = "whats.our.vector.victor@monoid.al";
      author = "Joe Hermaszewski";
      homepage = "https://github.com/expipiplus1/vector-sized#readme";
      url = "";
      synopsis = "Size tagged vectors";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.adjunctions)
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.deepseq)
          (hsPkgs.distributive)
          (hsPkgs.finite-typelits)
          (hsPkgs.hashable)
          (hsPkgs.indexed-list-literals)
          (hsPkgs.primitive)
          (hsPkgs.vector)
          ];
        };
      };
    }