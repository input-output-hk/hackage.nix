{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-session-postgresql"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Hans-Christian Esperer";
      maintainer = "Hans-Christian Esperer hc@hcesperer.org";
      author = "Hans-Christian Esperer hc@hcesperer.org";
      homepage = "https://github.com/hce/postgresql-session";
      url = "";
      synopsis = "PostgreSQL backed Wai session store";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."wai-session" or ((hsPkgs.pkgs-errors).buildDepError "wai-session"))
          ];
        buildable = true;
        };
      tests = {
        "postgresql-session-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."postgresql-session" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-session"))
            ];
          buildable = true;
          };
        };
      };
    }