{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rei"; version = "0.4.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel";
      author = "Daniel";
      homepage = "https://github.com/kerkomen/rei";
      url = "";
      synopsis = "Process lists easily";
      description = "A tool for processing lists easily";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rei" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }