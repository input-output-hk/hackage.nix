{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "reqcatcher"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hiratara@cpan.org";
      author = "Masahiro Honma";
      homepage = "http://github.com/hiratara/hs-reqcatcher";
      url = "";
      synopsis = "A local http server to catch the HTTP redirect";
      description = "Manage an http server in your local PC to catch the HTTP\nredirect request from the browser. Especially, you can\ncatch the redirect from oauth providor and will get\noauth_verifier.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          ];
        buildable = true;
        };
      tests = {
        "reqcatcher-test" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."reqcatcher" or ((hsPkgs.pkgs-errors).buildDepError "reqcatcher"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
            ];
          buildable = true;
          };
        };
      };
    }