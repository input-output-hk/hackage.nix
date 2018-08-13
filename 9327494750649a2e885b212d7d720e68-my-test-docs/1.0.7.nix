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
        name = "my-test-docs";
        version = "1.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "none";
      author = "";
      homepage = "";
      url = "";
      synopsis = "spam";
      description = "spam.";
      buildType = "Custom";
    };
    components = {
      "my-test-docs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.servant-docs)
          (hsPkgs.servant)
          (hsPkgs.servant-auth)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.servant-auth-docs)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.servant-docs)
            (hsPkgs.servant)
            (hsPkgs.servant-auth)
            (hsPkgs.lens)
            (hsPkgs.servant-auth-docs)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
      };
    };
  }