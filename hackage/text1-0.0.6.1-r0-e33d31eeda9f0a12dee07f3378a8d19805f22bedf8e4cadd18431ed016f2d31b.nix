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
      specVersion = "1.10";
      identifier = {
        name = "text1";
        version = "0.0.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      homepage = "https://github.com/qfpl/text1";
      url = "";
      synopsis = "Non-empty values of `Data.Text`.";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nNon-empty values of `Data.Text`.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.lens)
          (hsPkgs.binary)
        ];
      };
      tests = {
        "hunit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.text1)
          ];
        };
        "quickcheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.text1)
          ];
        };
      };
    };
  }