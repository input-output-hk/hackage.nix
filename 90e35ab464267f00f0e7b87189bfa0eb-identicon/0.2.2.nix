{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "identicon";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mrkkrp/identicon";
        url = "";
        synopsis = "Flexible generation of identicons";
        description = "Flexible generation of identicons.";
        buildType = "Simple";
      };
      components = {
        identicon = {
          depends  = [
            hsPkgs.base
            hsPkgs.JuicyPixels
            hsPkgs.bytestring
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.JuicyPixels
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.identicon
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.JuicyPixels
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.identicon
              hsPkgs.random
              hsPkgs.tf-random
            ];
          };
        };
      };
    }