{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "katip-scalyr-scribe"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Simon Hafner";
      maintainer = "hafnersimon@gmail.com";
      author = "Simon Hafner";
      homepage = "https://github.com/reactormonk/katip-scalyr-scribe#readme";
      url = "";
      synopsis = "A katip scribe for logging to json";
      description = "Please see the README on Github at <https://github.com/reactormonk/katip-scalyr-scribe#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."katip" or ((hsPkgs.pkgs-errors).buildDepError "katip"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "katip-json-scribe-test" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."katip" or ((hsPkgs.pkgs-errors).buildDepError "katip"))
            (hsPkgs."katip-scalyr-scribe" or ((hsPkgs.pkgs-errors).buildDepError "katip-scalyr-scribe"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }