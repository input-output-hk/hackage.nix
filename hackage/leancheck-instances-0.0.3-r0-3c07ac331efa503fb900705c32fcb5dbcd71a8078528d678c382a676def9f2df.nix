{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "leancheck-instances"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/leancheck-instances#readme";
      url = "";
      synopsis = "Common LeanCheck instances";
      description = "Listable instances for types provided by the Haskell Platform.\n\nThe current objective is to include all types supported by quickcheck-instances:\n<https://hackage.haskell.org/package/quickcheck-instances>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            (hsPkgs."leancheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "leancheck-instances"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "text" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            (hsPkgs."leancheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "leancheck-instances"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }