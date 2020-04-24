{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; demo = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "postmark"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Mark Hibberd";
      maintainer = "Mark Hibberd <mark@hibberd.id.au>";
      author = "Mark Hibberd <mark@hibberd.id.au>";
      homepage = "https://github.com/apiengine/postmark";
      url = "";
      synopsis = "Library for postmarkapp.com HTTP Api";
      description = "postmark";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."network-api-support" or ((hsPkgs.pkgs-errors).buildDepError "network-api-support"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          ];
        buildable = true;
        };
      exes = {
        "postmark-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."postmark" or ((hsPkgs.pkgs-errors).buildDepError "postmark"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if flags.demo then true else false;
          };
        };
      };
    }