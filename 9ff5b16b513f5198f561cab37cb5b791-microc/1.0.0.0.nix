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
        name = "microc";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 hurou927";
      maintainer = "hurou927 <god.be.with.ye.fs@gmail.com>";
      author = "hurou927 <god.be.with.ye.fs@gmail.com>";
      homepage = "https://github.com/hurou927/microc-haskell#readme";
      url = "";
      synopsis = "microc compiler";
      description = "convert microc code to asm code";
      buildType = "Simple";
    };
    components = {
      "microc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "microc-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.microc)
          ];
        };
      };
      tests = {
        "microc-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.microc)
          ];
        };
      };
    };
  }