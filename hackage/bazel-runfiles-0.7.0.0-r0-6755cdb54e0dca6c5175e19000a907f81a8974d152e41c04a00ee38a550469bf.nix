{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bazel-runfiles"; version = "0.7.0.0"; };
      license = "Apache-2.0";
      copyright = "2018 Tweag I/O Limited";
      maintainer = "m@tweag.io";
      author = "Tweag I/O Limited";
      homepage = "https://github.com/tweag/rules_haskell#readme";
      url = "";
      synopsis = "Locate Bazel runfiles location";
      description = "Please see the README on GitHub at <https://github.com/tweag/rules_haskell/tools/runfiles#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.directory) (hsPkgs.filepath) ];
        };
      exes = {
        "bazel-runfiles-exe" = {
          depends = [ (hsPkgs.base) (hsPkgs.bazel-runfiles) (hsPkgs.filepath) ];
          };
        };
      };
    }