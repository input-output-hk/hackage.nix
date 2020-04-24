{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "concraft-hr"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vjeran.crnjak@gmail.com";
      author = "Vjeran Crnjak";
      homepage = "https://github.com/vjeranc/concraft-hr";
      url = "";
      synopsis = "Part-of-speech tagger for Croatian";
      description = "A part-of-speech tagger for Croatian based on the concraft library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."concraft" or ((hsPkgs.pkgs-errors).buildDepError "concraft"))
          (hsPkgs."tagset-positional" or ((hsPkgs.pkgs-errors).buildDepError "tagset-positional"))
          (hsPkgs."sgd" or ((hsPkgs.pkgs-errors).buildDepError "sgd"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."lazy-io" or ((hsPkgs.pkgs-errors).buildDepError "lazy-io"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."moan" or ((hsPkgs.pkgs-errors).buildDepError "moan"))
          (hsPkgs."double-conversion" or ((hsPkgs.pkgs-errors).buildDepError "double-conversion"))
          ];
        buildable = true;
        };
      exes = {
        "concraft-hr" = {
          depends = [
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }