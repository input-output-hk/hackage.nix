{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "multi-containers"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Ziyang Liu";
      maintainer = "free@cofree.io";
      author = "Ziyang Liu";
      homepage = "https://github.com/zliu41/multi-containers#readme";
      url = "";
      synopsis = "A few variants of multimaps.";
      description = "Please see the README on GitHub at <https://github.com/zliu41/multi-containers#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      exes = {
        "test-gen" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            ];
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.multi-containers)
            ];
          };
        };
      };
    }