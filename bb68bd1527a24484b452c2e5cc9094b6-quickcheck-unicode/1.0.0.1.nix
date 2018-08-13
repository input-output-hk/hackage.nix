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
      specVersion = "1.8";
      identifier = {
        name = "quickcheck-unicode";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/bos/quickcheck-unicode";
      url = "";
      synopsis = "Generator and shrink functions for testing\nUnicode-related software.";
      description = "Generator and shrink functions for testing\nUnicode-related software.";
      buildType = "Simple";
    };
    components = {
      "quickcheck-unicode" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }