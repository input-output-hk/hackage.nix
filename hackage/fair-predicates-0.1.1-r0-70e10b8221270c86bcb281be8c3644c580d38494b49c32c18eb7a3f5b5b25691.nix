{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "fair-predicates"; version = "0.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "sebf@informatik.uni-kiel.de";
      author = "Sebastian Fischer";
      homepage = "http://sebfisch.github.com/fair-predicates";
      url = "";
      synopsis = "Fair Predicates";
      description = "This Haskell library provides an implementation of Boolean\npredicates with interleaved evaluation. Conjunction and disjunction\nare not biased to one of their arguments but evaluate both step-wise\ninterleaved.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }