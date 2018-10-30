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
      specVersion = "1.8";
      identifier = {
        name = "test-simple";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Boris Sukholitko, 2012";
      maintainer = "boriss@gmail.com";
      author = "Boris Sukholitko";
      homepage = "";
      url = "";
      synopsis = "Simple Perl inspired testing";
      description = "Test.Simple provides simple, Perl inspired primitives for easy testing. It outputs test\nresults in TAP format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.state-plus)
        ];
      };
      tests = {
        "Main" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-simple)
            (hsPkgs.process)
            (hsPkgs.executable-path)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }