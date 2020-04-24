{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "records-th"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "github.com/lassoinc/records-th";
      url = "";
      synopsis = "Template Haskell declarations for the records package";
      description = "Records-TH generates a variety of declarations for use with the records package,\nincluding datatypes, Name, FromJSON, ToJSON and Default instances, and a default field type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."records" or ((hsPkgs.pkgs-errors).buildDepError "records"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."kinds" or ((hsPkgs.pkgs-errors).buildDepError "kinds"))
          (hsPkgs."type-functions" or ((hsPkgs.pkgs-errors).buildDepError "type-functions"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          ];
        buildable = true;
        };
      };
    }