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
        version = "0.2.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/plow-technologies/servant-auth#readme";
      url = "";
      synopsis = "servant-swagger/servant-auth compatibility";
      description = "Please see README.md";
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
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.servant-swagger)
            (hsPkgs.swagger2)
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
            (hsPkgs.servant-swagger)
            (hsPkgs.swagger2)
            (hsPkgs.servant)
            (hsPkgs.servant-auth)
            (hsPkgs.lens)
            (hsPkgs.servant-auth-swagger)
            (hsPkgs.yaml)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }