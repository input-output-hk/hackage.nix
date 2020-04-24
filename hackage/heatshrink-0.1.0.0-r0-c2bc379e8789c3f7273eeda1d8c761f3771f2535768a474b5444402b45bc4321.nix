{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "heatshrink"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Thierry Bourrillon";
      maintainer = "thierry.bourrillon@fpinsight.com";
      author = "Thierry Bourrillon";
      homepage = "https://github.com/fpinsight/heatshrink#readme";
      url = "";
      synopsis = "Compression and decompression using heatshrink";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "heatshrink-test" = {
          depends = [
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."heatshrink" or ((hsPkgs.pkgs-errors).buildDepError "heatshrink"))
            (hsPkgs."pcre-heavy" or ((hsPkgs.pkgs-errors).buildDepError "pcre-heavy"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }