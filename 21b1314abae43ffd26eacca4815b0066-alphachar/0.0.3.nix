{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "alphachar";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010-2016 NICTA Limited\nCopyright (c) 2017-2018, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/alphachar";
      url = "";
      synopsis = "A character between a-z";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nA character between a-z";
      buildType = "Simple";
    };
    components = {
      "alphachar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.parsers)
          (hsPkgs.semigroups)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
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
            (hsPkgs.alphachar)
          ];
        };
      };
    };
  }