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
        name = "servant-auth-docs";
        version = "0.2.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/plow-technologies/servant-auth#readme";
      url = "";
      synopsis = "servant-docs/servant-auth compatibility";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
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
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.servant-docs)
            (hsPkgs.servant)
            (hsPkgs.servant-auth)
            (hsPkgs.lens)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
            (hsPkgs.yaml)
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
        };
      };
    };
  }