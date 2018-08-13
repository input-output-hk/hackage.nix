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
        name = "hspec-slow";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Bob Long";
      maintainer = "robertjflong@gmail.com";
      author = "Bob Long";
      homepage = "https://github.com/bobjflong/hspec-slow#readme";
      url = "";
      synopsis = "Find slow test cases";
      description = "Records and prints out slow Hspec tests";
      buildType = "Simple";
    };
    components = {
      "hspec-slow" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.hspec)
        ];
      };
      tests = {
        "hspec-slow-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec-slow)
            (hsPkgs.hspec)
            (hsPkgs.stm)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }