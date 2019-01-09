{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dde"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Bogdan Penkovsky";
      maintainer = "dev () penkovsky dot com";
      author = "Bogdan Penkovsky";
      homepage = "https://github.com/masterdezign/dde#readme";
      url = "";
      synopsis = "Delay differential equations";
      description = "Please see the README on Github at <https://github.com/masterdezign/dde#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.free-vector-spaces)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "chimera" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dde)
            (hsPkgs.free-vector-spaces)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.vector)
            ];
          };
        "mackey-glass" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dde)
            (hsPkgs.free-vector-spaces)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "dde-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dde)
            (hsPkgs.free-vector-spaces)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.vector)
            ];
          };
        };
      benchmarks = {
        "dde-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.free-vector-spaces)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }