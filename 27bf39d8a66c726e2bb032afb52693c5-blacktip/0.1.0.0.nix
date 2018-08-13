{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "blacktip";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2014, Chris Allen";
      maintainer = "cma@bitemyapp.com";
      author = "Chris Allen";
      homepage = "https://github.com/bitemyapp/blacktip";
      url = "";
      synopsis = "Decentralized, k-ordered unique ID generator.";
      description = "Clone of Boundary's Flake unique id service for Haskell, itself based on Snowflake.";
      buildType = "Simple";
    };
    components = {
      "blacktip" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bitwise)
          (hsPkgs.locators)
          (hsPkgs.network-info)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.system-fileio)
          (hsPkgs.system-filepath)
          (hsPkgs.time)
          (hsPkgs.deepseq-generics)
          (hsPkgs.deepseq)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blacktip)
            (hsPkgs.hspec)
          ];
        };
      };
      benchmarks = {
        "benches" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blacktip)
            (hsPkgs.criterion)
            (hsPkgs.network-info)
            (hsPkgs.time)
            (hsPkgs.async)
          ];
        };
      };
    };
  }