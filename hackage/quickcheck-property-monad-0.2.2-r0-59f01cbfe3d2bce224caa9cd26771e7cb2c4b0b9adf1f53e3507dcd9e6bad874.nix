{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { tests = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "quickcheck-property-monad";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2014 Benno Fünfstück";
      maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
      author = "Benno Fünfstück";
      homepage = "http://github.com/bennofs/quickcheck-property-monad/";
      url = "";
      synopsis = "quickcheck-property-monad";
      description = "quickcheck-property-monad";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.either)
          (hsPkgs.transformers)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ] ++ pkgs.lib.optional (flags.tests) (hsPkgs.QuickCheck);
        };
      };
    };
  }