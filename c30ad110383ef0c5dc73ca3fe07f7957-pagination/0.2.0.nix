{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pagination";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mrkkrp/pagination";
        url = "";
        synopsis = "Framework-agnostic pagination boilerplate";
        description = "Framework-agnostic pagination boilerplate.";
        buildType = "Simple";
      };
      components = {
        pagination = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.exceptions
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.exceptions
              hsPkgs.hspec
              hsPkgs.pagination
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
          };
        };
      };
    }