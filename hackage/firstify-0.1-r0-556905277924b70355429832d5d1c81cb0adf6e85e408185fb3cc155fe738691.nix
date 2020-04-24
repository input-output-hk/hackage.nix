{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "firstify"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2007-8, Neil Mitchell";
      maintainer = "ndmitchell@gmail.com";
      author = "Neil Mitchell";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/firstify/";
      url = "";
      synopsis = "Defunctionalisation for Yhc Core";
      description = "A library to transform Yhc Core programs to first-order.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."yhccore" or ((hsPkgs.pkgs-errors).buildDepError "yhccore"))
          (hsPkgs."Safe" or ((hsPkgs.pkgs-errors).buildDepError "Safe"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."homeomorphic" or ((hsPkgs.pkgs-errors).buildDepError "homeomorphic"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = { "firstify" = { buildable = true; }; };
      };
    }