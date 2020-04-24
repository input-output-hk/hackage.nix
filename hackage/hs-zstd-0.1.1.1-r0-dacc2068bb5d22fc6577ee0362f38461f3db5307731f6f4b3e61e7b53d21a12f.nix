{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { standalone = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hs-zstd"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-present, Facebook, Inc. All rights reserved.; 2019 Luis Pedro Coelho";
      maintainer = "luis@luispedro.org";
      author = "Bryan O'Sullivan";
      homepage = "https://github.com/facebookexperimental/hs-zstd";
      url = "";
      synopsis = "Haskell bindings to the Zstandard compression algorithm";
      description = "A fast lossless compression algorithm, targeting real-time\ncompression scenarios at zlib-level and better compression ratios.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        libs = (pkgs.lib).optional (!flags.standalone) (pkgs."zstd" or ((hsPkgs.pkgs-errors).sysDepError "zstd"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."hs-zstd" or ((hsPkgs.pkgs-errors).buildDepError "hs-zstd"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."hs-zstd" or ((hsPkgs.pkgs-errors).buildDepError "hs-zstd"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            ];
          buildable = true;
          };
        };
      };
    }