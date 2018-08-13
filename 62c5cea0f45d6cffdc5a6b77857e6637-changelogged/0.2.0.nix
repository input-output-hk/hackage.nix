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
        name = "changelogged";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017-2018, GetShop.TV";
      maintainer = "Vitalii Guzeev <vitaliy@getshoptv.com>";
      author = "Vitalii Guzeev <vitaliy@getshoptv.com>";
      homepage = "https://github.com/GetShopTV/changelogged#readme";
      url = "";
      synopsis = "Changelog manager for Git projects.";
      description = "Please see the README on Github at <https://github.com/GetShopTV/changelogged#readme>";
      buildType = "Custom";
    };
    components = {
      "changelogged" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.foldl)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.turtle)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "changelogged" = {
          depends  = [
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.changelogged)
            (hsPkgs.turtle)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.Glob)
            (hsPkgs.QuickCheck)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.turtle)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }