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
      specVersion = "1.6";
      identifier = {
        name = "test-framework-th-prime";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "Template Haskell for test framework";
      description = "Automatically generates a Test list for\nHUnit, doctest and QuickCheck2.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.test-framework)
          (hsPkgs.language-haskell-extract)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.regex-posix)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }