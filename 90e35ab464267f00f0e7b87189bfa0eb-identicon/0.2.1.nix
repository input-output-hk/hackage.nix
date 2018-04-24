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
          name = "identicon";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov@openmailbox.org>";
        author = "Mark Karpov <markkarpov@openmailbox.org>";
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
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
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
            ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
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