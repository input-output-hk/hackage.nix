{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "dependency";
          version = "1.1.0.0";
        };
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
        dependency = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-wl-pprint
            hsPkgs.containers
            hsPkgs.micro-recursion-schemes
            hsPkgs.microlens
            hsPkgs.binary
            hsPkgs.deepseq
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") hsPkgs.semigroups;
          build-tools = [
            hsPkgs.buildPackages.cpphs
          ];
        };
        tests = {
          dependency-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.dependency
              hsPkgs.hspec
              hsPkgs.containers
            ];
          };
        };
        benchmarks = {
          dependency-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.dependency
              hsPkgs.containers
              hsPkgs.criterion
            ];
          };
        };
      };
    }