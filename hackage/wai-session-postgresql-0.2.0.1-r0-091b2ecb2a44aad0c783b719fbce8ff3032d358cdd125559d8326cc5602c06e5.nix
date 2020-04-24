{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-session-postgresql"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 Hans-Christian Esperer";
      maintainer = "Hans-Christian Esperer <hc@hcesperer.org>";
      author = "Hans-Christian Esperer <hc@hcesperer.org>";
      homepage = "https://github.com/hce/postgresql-session#readme";
      url = "";
      synopsis = "PostgreSQL backed Wai session store";
      description = "Provides a PostgreSQL backed session store for the Network.Wai.Session interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."cookie" or ((hsPkgs.pkgs-errors).buildDepError "cookie"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."entropy" or ((hsPkgs.pkgs-errors).buildDepError "entropy"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."wai-session" or ((hsPkgs.pkgs-errors).buildDepError "wai-session"))
          ];
        buildable = true;
        };
      tests = {
        "postgresql-session-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wai-session-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "wai-session-postgresql"))
            ];
          buildable = true;
          };
        };
      };
    }