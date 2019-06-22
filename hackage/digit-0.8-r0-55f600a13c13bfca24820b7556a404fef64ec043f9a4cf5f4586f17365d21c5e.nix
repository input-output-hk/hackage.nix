{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "digit"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010-2016 NICTA Limited\nCopyright (c) 2017, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/digit";
      url = "";
      synopsis = "A data-type representing digits 0-9 and other combinations";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\n@Digit@ is a data-type that represents the digits 0-9 and other combinations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.parsers)
          (hsPkgs.semigroups)
          (hsPkgs.template-haskell)
          (hsPkgs.semigroupoids)
          (hsPkgs.scientific)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.hedgehog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.parsec)
            (hsPkgs.parsers)
            (hsPkgs.pretty)
            (hsPkgs.text)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hunit)
            (hsPkgs.semigroups)
            (hsPkgs.digit)
            ];
          };
        };
      };
    }