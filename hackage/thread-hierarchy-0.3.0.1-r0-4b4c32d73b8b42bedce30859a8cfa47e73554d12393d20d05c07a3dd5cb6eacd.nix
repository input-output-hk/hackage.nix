{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "thread-hierarchy"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "2017,2018 Naoto Shimazaki";
      maintainer = "Naoto.Shimazaki@gmail.com";
      author = "Naoto Shimazaki";
      homepage = "https://github.com/nshimaza/thread-hierarchy#readme";
      url = "";
      synopsis = "Simple Haskel thread management in hierarchical manner";
      description = "Please see the README on GitHub at <https://github.com/nshimaza/thread-hierarchy#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.stm) ];
        };
      tests = {
        "thread-hierarchy-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.stm)
            (hsPkgs.thread-hierarchy)
            ];
          };
        };
      };
    }