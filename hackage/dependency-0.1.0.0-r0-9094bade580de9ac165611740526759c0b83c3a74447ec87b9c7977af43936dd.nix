{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "dependency"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Dependency resolution for package management";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.containers)
          (hsPkgs.recursion-schemes)
          (hsPkgs.microlens)
          (hsPkgs.deepseq)
          (hsPkgs.binary)
          ];
        };
      tests = {
        "dependency-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.dependency) (hsPkgs.hspec) ];
          };
        };
      benchmarks = {
        "dependency-bench" = {
          depends = [ (hsPkgs.base) (hsPkgs.dependency) (hsPkgs.criterion) ];
          };
        };
      };
    }