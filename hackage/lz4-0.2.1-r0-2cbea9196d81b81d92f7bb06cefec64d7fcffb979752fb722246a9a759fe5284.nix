{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lz4"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Mark Wotton, Austin Seipp 2012";
      maintainer = "mwotton@gmail.com";
      author = "Mark Wotton <mwotton@gmail.com)";
      homepage = "http://github.com/mwotton/lz4hs";
      url = "";
      synopsis = "LZ4 compression for ByteStrings";
      description = "High level bindings to the LZ4 compression library.\n\nCurrently based on lz4 r75. C sources are included and no external\ndependencies are needed other than @cereal@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."lz4" or ((hsPkgs.pkgs-errors).buildDepError "lz4"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench1" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."lz4" or ((hsPkgs.pkgs-errors).buildDepError "lz4"))
            (hsPkgs."quicklz" or ((hsPkgs.pkgs-errors).buildDepError "quicklz"))
            (hsPkgs."snappy" or ((hsPkgs.pkgs-errors).buildDepError "snappy"))
            ];
          buildable = true;
          };
        };
      };
    }