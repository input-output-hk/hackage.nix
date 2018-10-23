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
        name = "natural";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/natural";
      url = "";
      synopsis = "Natural number";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nNatural number";
      buildType = "Simple";
    };
    components = {
      "natural" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0.1") (hsPkgs.semigroups);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.checkers)
            (hsPkgs.natural)
            (hsPkgs.hedgehog)
            (hsPkgs.lens)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }