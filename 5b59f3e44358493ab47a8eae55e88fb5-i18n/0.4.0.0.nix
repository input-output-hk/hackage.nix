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
        name = "i18n";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2016 Eugene Grigoriev";
      maintainer = "Philip Cunningham <hello@filib.io>";
      author = "Eugene Grigoriev <eugene.grigoriev@gmail.com>";
      homepage = "https://github.com/filib/i18n";
      url = "";
      synopsis = "Internationalization for Haskell";
      description = "Internationalisation for Haskell";
      buildType = "Simple";
    };
    components = {
      "i18n" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "i18n-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.i18n)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }