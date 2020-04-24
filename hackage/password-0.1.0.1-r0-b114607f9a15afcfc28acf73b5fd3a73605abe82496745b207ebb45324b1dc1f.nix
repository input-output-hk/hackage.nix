{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "password"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/password/password#readme";
      url = "";
      synopsis = "plain-text password and hashed password datatypes and functions";
      description = "A library providing types for working with plain-text and hashed passwords, generally for web applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."scrypt" or ((hsPkgs.pkgs-errors).buildDepError "scrypt"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "password-doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."password" or ((hsPkgs.pkgs-errors).buildDepError "password"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            ];
          buildable = true;
          };
        "password-tasty" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."password" or ((hsPkgs.pkgs-errors).buildDepError "password"))
            ];
          buildable = true;
          };
        };
      };
    }