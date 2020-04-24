{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "tmpl"; version = "0.0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "michel@kuhlmanns.info";
      author = "Michel Kuhlmann";
      homepage = "https://www.github.com/michelk/tmpl";
      url = "";
      synopsis = "simple executable for templating";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tmpl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."template" or ((hsPkgs.pkgs-errors).buildDepError "template"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }