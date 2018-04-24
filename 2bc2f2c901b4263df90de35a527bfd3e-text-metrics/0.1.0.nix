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
          name = "text-metrics";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov@openmailbox.org>";
        author = "Mark Karpov <markkarpov@openmailbox.org>";
        homepage = "https://github.com/mrkkrp/text-metrics";
        url = "";
        synopsis = "Calculate various string metrics efficiently";
        description = "Calculate various string metrics efficiently.";
        buildType = "Simple";
      };
      components = {
        text-metrics = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) hsPkgs.nats;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.text-metrics
            ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) hsPkgs.nats;
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.text
              hsPkgs.text-metrics
            ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) hsPkgs.nats;
          };
        };
      };
    }