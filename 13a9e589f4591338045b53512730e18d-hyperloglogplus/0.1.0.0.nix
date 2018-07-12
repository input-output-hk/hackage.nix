{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hyperloglogplus";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Eugene Zhulenev";
        maintainer = "eugene.zhulenev@gmail.com";
        author = "Eugene Zhulenev";
        homepage = "https://github.com/ezhulenev/hyperloglogplus#readme";
        url = "";
        synopsis = "Approximate cardinality estimation using constant space";
        description = "HyperLogLog++ with MinHash for efficient cardinality and intersection estimation\nusing constant space.\n\nSee original AdRoll paper for details:\n<http://tech.adroll.com/media/hllminhash.pdf>";
        buildType = "Simple";
      };
      components = {
        "hyperloglogplus" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bits
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.semigroups
            hsPkgs.murmur-hash
          ];
        };
        tests = {
          "hyperloglogplus-test" = {
            depends  = [
              hsPkgs.hyperloglogplus
              hsPkgs.HUnit
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.base
              hsPkgs.semigroups
            ];
          };
        };
      };
    }