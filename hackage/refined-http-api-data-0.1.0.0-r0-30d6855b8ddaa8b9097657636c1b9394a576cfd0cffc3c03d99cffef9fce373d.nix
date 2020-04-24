{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "refined-http-api-data"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright © 2019 Brandon Hamilton";
      maintainer = "brandon.hamilton@gmail.com";
      author = "Brandon Hamilton";
      homepage = "";
      url = "";
      synopsis = "http-api-data instances for refined types";
      description = "Orphan instances of Web.HttpApiData for refinement types";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
          (hsPkgs."refined" or ((hsPkgs.pkgs-errors).buildDepError "refined"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }