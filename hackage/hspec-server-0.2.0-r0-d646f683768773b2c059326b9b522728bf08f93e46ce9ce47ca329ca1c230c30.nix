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
        name = "hspec-server";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "";
      url = "";
      synopsis = "Test Framework for Server's status";
      description = "Hspec-Server is test framework for checking server's status.\nIt is inspired by the Ruby library ServerSpec.";
      buildType = "Simple";
    };
    components = {
      "hspec-server" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hspec)
          (hsPkgs.hspec-core)
          (hsPkgs.hspec-expectations)
          (hsPkgs.transformers)
          (hsPkgs.process)
          (hsPkgs.temporary)
          (hsPkgs.containers)
          (hsPkgs.HUnit)
          (hsPkgs.regex-posix)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-contrib)
            (hsPkgs.hspec-server)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }