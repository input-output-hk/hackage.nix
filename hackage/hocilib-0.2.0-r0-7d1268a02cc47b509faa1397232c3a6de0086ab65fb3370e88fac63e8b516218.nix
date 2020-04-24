{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hocilib"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Thierry Bourrillon\n(c) 2016 FPInsight, Eurl.";
      maintainer = "Thierry Bourrillon <thierry.bourrillon@fpinsight.com>";
      author = "Thierry Bourrillon <thierry.bourrillon@fpinsight.com>";
      homepage = "https://github.com/fpinsight/hocilib";
      url = "";
      synopsis = "FFI binding to OCILIB";
      description = "A low-level client library for the Oracle database, implemented as\nbindings to the C OCILIB API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."inline-c" or ((hsPkgs.pkgs-errors).buildDepError "inline-c"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        libs = [
          (pkgs."ocilib" or ((hsPkgs.pkgs-errors).sysDepError "ocilib"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hocilib" or ((hsPkgs.pkgs-errors).buildDepError "hocilib"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          libs = [
            (pkgs."ocilib" or ((hsPkgs.pkgs-errors).sysDepError "ocilib"))
            ];
          buildable = true;
          };
        };
      };
    }