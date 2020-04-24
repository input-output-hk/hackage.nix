{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "inliterate"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tomn@diffusionkinetics.com";
      author = "Tom Nielsen";
      homepage = "https://github.com/diffusionkinetics/open/inliterate";
      url = "";
      synopsis = "Interactive literate programming";
      description = "Evaluate markdown code blocks to show the results of running the code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cheapskate" or ((hsPkgs.pkgs-errors).buildDepError "cheapskate"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."plotlyhs" or ((hsPkgs.pkgs-errors).buildDepError "plotlyhs"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          (hsPkgs."lucid-extras" or ((hsPkgs.pkgs-errors).buildDepError "lucid-extras"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          ];
        buildable = true;
        };
      exes = {
        "inlitpp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."inliterate" or ((hsPkgs.pkgs-errors).buildDepError "inliterate"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-inliterate" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."inliterate" or ((hsPkgs.pkgs-errors).buildDepError "inliterate"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "test-inliterate-pp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."inliterate" or ((hsPkgs.pkgs-errors).buildDepError "inliterate"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = false;
          };
        };
      };
    }