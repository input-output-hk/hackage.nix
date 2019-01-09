{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "dependency"; version = "1.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Dependency resolution for package management";
      description = "A library for resolving dependencies; uses a topological sort to construct a build plan and then allows choice between all compatible plans.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.containers)
          (hsPkgs.microlens)
          (hsPkgs.binary)
          (hsPkgs.deepseq)
          ] ++ (if compiler.isGhc && (compiler.version).ge "8.2"
          then [ (hsPkgs.micro-recursion-schemes) ]
          else [ (hsPkgs.recursion-schemes) ]);
        };
      tests = {
        "dependency-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dependency)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            ];
          };
        };
      benchmarks = {
        "dependency-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dependency)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }