{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "plan-b";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov@opmbx.org>";
        author = "Mark Karpov <markkarpov@opmbx.org>";
        homepage = "https://github.com/mrkkrp/plan-b";
        url = "";
        synopsis = "Failure-tolerant file and directory editing";
        description = "Failure-tolerant file and directory editing.";
        buildType = "Simple";
      };
      components = {
        plan-b = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.path
            hsPkgs.path-io
            hsPkgs.transformers
          ];
        };
        tests = {
          tests = {
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