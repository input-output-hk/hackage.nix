{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "minst-idx"; version = "0.1.2.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "christof.schramm@campus.lmu.de";
      author = "Christof Schramm";
      homepage = "https://github.com/kryoxide/minst-idx/";
      url = "";
      synopsis = "Read and write IDX data that is used in e.g. the MINST database.";
      description = "This package provides functionality to read and write data in the IDX\nbinary format. This format is relevant for machine learning applications,\nlike the MINST handwritten digit database.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."minst-idx" or ((hsPkgs.pkgs-errors).buildDepError "minst-idx"))
            ];
          buildable = true;
          };
        };
      };
    }