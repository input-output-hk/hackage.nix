{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ridley-extras"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/iconnect/ridley/ridley-extras#readme";
      url = "";
      synopsis = "Handy metrics that doesn't belong to ridley.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."prometheus" or ((hsPkgs.pkgs-errors).buildDepError "prometheus"))
          (hsPkgs."shelly" or ((hsPkgs.pkgs-errors).buildDepError "shelly"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."ekg-prometheus-adapter" or ((hsPkgs.pkgs-errors).buildDepError "ekg-prometheus-adapter"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."ridley" or ((hsPkgs.pkgs-errors).buildDepError "ridley"))
          ];
        buildable = true;
        };
      tests = {
        "ridley-extras-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ridley-extras" or ((hsPkgs.pkgs-errors).buildDepError "ridley-extras"))
            ];
          buildable = true;
          };
        };
      };
    }