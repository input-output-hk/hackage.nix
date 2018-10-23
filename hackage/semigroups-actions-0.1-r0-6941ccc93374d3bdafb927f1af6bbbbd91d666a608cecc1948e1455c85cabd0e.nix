{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { base2 = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "semigroups-actions";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Petr Pudlák";
      maintainer = "Petr Pudlák <petr.mvd@gmail.com>";
      author = "Petr Pudlák";
      homepage = "http://github.com/ppetr/semigroups-actions/";
      url = "";
      synopsis = "Semigroups actions";
      description = "In mathematics, an action of a semigroup on a set is an operation that\nassociates each element of the semigroup is with a transformation on the\nset.";
      buildType = "Simple";
    };
    components = {
      "semigroups-actions" = {
        depends  = if flags.base2
          then [
            (hsPkgs.base)
            (hsPkgs.semigroups)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.semigroups)
          ];
      };
    };
  }