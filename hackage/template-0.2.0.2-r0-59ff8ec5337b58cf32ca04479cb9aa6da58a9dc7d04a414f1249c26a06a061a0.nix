{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "template"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Johan Tibell <johan.tibell@gmail.com>";
      author = "Johan Tibell <johan.tibell@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Simple string substitution";
      description = "Simple string substitution library that supports \\\"\$\\\"-based\nsubstitution.  Meant to be used when Text.Printf or string\nconcatenation would lead to code that is hard to read but when a\nfull blown templating system is overkill.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }