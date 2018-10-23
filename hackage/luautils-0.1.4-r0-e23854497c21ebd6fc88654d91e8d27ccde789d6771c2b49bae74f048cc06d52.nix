{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "luautils";
        version = "0.1.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "";
      url = "";
      synopsis = "Helpers for Haskell integration with Lua";
      description = "This package is an add-on to the @HsLua@ package by Gracjan Polak.\nHsLua only provides a very bare-bones wrapper over the Lua API, and this\npackage is meant to fill in the gap by providing some commonly used features.";
      buildType = "Simple";
    };
    components = {
      "luautils" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hslua)
          (hsPkgs.monad-loops)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
        ];
      };
      tests = {
        "simple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hslua)
            (hsPkgs.luautils)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-th)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.binary)
            (hsPkgs.text-binary)
          ];
        };
      };
    };
  }