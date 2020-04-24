{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hastache-aeson"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Vladimir Kirillov";
      maintainer = "Vladimir Kirillov <proger@hackndev.com>";
      author = "Vladimir Kirillov <proger@hackndev.com>";
      homepage = "https://github.com/proger/hastache-aeson";
      url = "";
      synopsis = "render hastache templates using aeson values";
      description = "The Module lets you render Hastache templates from aeson values. See the GitHub page for examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hastache" or ((hsPkgs.pkgs-errors).buildDepError "hastache"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }