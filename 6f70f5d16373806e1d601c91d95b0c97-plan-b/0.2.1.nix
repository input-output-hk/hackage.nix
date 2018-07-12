{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "plan-b";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mrkkrp/plan-b";
        url = "";
        synopsis = "Failure-tolerant file and directory editing";
        description = "Failure-tolerant file and directory editing.";
        buildType = "Simple";
      };
      components = {
        "plan-b" = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.path
            hsPkgs.path-io
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.path
              hsPkgs.path-io
              hsPkgs.plan-b
            ];
          };
        };
      };
    }