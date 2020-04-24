{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "libpafe"; version = "0.1.1.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "haru2036@gmail.com";
      author = "haru2036";
      homepage = "";
      url = "";
      synopsis = "Wrapper for libpafe";
      description = "Wrapper for Pasori library libpafe";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        libs = [ (pkgs."pafe" or ((hsPkgs.pkgs-errors).sysDepError "pafe")) ];
        buildable = true;
        };
      tests = {
        "test-read" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."libpafe" or ((hsPkgs.pkgs-errors).buildDepError "libpafe"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."iconv" or ((hsPkgs.pkgs-errors).buildDepError "iconv"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        "test-read-fcf" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."libpafe" or ((hsPkgs.pkgs-errors).buildDepError "libpafe"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."iconv" or ((hsPkgs.pkgs-errors).buildDepError "iconv"))
            ];
          buildable = true;
          };
        };
      };
    }