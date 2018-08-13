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
        name = "servant-auth-swagger";
        version = "0.2.10.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/haskell-servant/servant-auth#readme";
      url = "";
      synopsis = "servant-swagger/servant-auth compatibility";
      description = "This package provides instances that allow generating swagger2 schemas from\n<https://hackage.haskell.org/package/servant servant>\nAPIs that use\n<https://hackage.haskell.org/package/servant-auth servant-auth's> @Auth@ combinator.\n\nFor a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.";
      buildType = "Simple";
    };
    components = {
      "servant-auth-swagger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.servant-swagger)
          (hsPkgs.swagger2)
          (hsPkgs.servant)
          (hsPkgs.servant-auth)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.servant-swagger)
            (hsPkgs.swagger2)
            (hsPkgs.servant)
            (hsPkgs.servant-auth)
            (hsPkgs.lens)
            (hsPkgs.servant-auth-swagger)
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