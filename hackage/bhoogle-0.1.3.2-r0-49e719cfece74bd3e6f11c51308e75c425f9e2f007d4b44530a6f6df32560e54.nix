{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "bhoogle"; version = "0.1.3.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andre Van Der Merwe";
      maintainer = "andre@andrevdm.com";
      author = "Andre Van Der Merwe";
      homepage = "https://github.com/andrevdm/bhoogle#readme";
      url = "";
      synopsis = "Simple terminal GUI for local hoogle.";
      description = "bhoogle is a terminal GUI layer over local hoogle. It provides search ahead and sub-string filtering in addition to the usual type-search.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bhoogle" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."hoogle" or ((hsPkgs.pkgs-errors).buildDepError "hoogle"))
            (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
            ];
          buildable = true;
          };
        };
      };
    }