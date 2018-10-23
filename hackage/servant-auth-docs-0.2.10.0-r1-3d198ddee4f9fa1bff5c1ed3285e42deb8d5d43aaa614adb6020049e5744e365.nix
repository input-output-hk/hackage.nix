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
        name = "servant-auth-docs";
        version = "0.2.10.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/haskell-servant/servant-auth#readme";
      url = "";
      synopsis = "servant-docs/servant-auth compatibility";
      description = "This package provides instances that allow generating docs from\n<https://hackage.haskell.org/package/servant servant>\nAPIs that use\n<https://hackage.haskell.org/package/servant-auth servant-auth's> @Auth@ combinator.\n\nFor a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.";
      buildType = "Custom";
    };
    components = {
      "servant-auth-docs" = {
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