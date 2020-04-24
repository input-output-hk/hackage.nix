{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "req-url-extra"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2018-2019 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/req-url-extra#readme";
      url = "";
      synopsis = "Provides URI/URL helper functions for use with Req";
      description = "This package provides helper functions for use with URIs and URLs in Req.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."modern-uri" or ((hsPkgs.pkgs-errors).buildDepError "modern-uri"))
          (hsPkgs."req" or ((hsPkgs.pkgs-errors).buildDepError "req"))
          ];
        buildable = true;
        };
      exes = {
        "sample" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."modern-uri" or ((hsPkgs.pkgs-errors).buildDepError "modern-uri"))
            (hsPkgs."req" or ((hsPkgs.pkgs-errors).buildDepError "req"))
            (hsPkgs."req-url-extra" or ((hsPkgs.pkgs-errors).buildDepError "req-url-extra"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "req-url-extra-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."modern-uri" or ((hsPkgs.pkgs-errors).buildDepError "modern-uri"))
            (hsPkgs."req" or ((hsPkgs.pkgs-errors).buildDepError "req"))
            (hsPkgs."req-url-extra" or ((hsPkgs.pkgs-errors).buildDepError "req-url-extra"))
            ];
          buildable = true;
          };
        };
      };
    }