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
        name = "hspec-need-env";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/hspec-need-env";
      url = "";
      synopsis = "Read environment variables for hspec tests";
      description = "Read environment variables for hspec tests. See 'Test.Hspec.NeedEnv'.";
      buildType = "Simple";
    };
    components = {
      "hspec-need-env" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hspec-expectations)
          (hsPkgs.hspec-core)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec-need-env)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec)
            (hsPkgs.setenv)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }