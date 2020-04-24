{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { utilities = false; };
    package = {
      specVersion = "1.4";
      identifier = { name = "samtools-iteratee"; version = "0.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "nick@ingolia.org";
      author = "Nicholas Ingolia";
      homepage = "";
      url = "";
      synopsis = "Iteratee interface to SamTools library";
      description = "Iteratee interface to SamTools library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."samtools" or ((hsPkgs.pkgs-errors).buildDepError "samtools"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."iteratee" or ((hsPkgs.pkgs-errors).buildDepError "iteratee"))
          ];
        buildable = true;
        };
      exes = {
        "bam-filter" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."samtools" or ((hsPkgs.pkgs-errors).buildDepError "samtools"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."iteratee" or ((hsPkgs.pkgs-errors).buildDepError "iteratee"))
            (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
            ];
          buildable = if !flags.utilities then false else true;
          };
        };
      };
    }