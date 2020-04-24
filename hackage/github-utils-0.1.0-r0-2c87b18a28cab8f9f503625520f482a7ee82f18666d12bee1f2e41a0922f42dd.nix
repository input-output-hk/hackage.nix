{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "github-utils"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "greenrd@greenrd.org";
      author = "Robin Green";
      homepage = "https://github.com/greenrd/github-utils";
      url = "";
      synopsis = "Useful functions that use the GitHub API";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."basic-prelude" or ((hsPkgs.pkgs-errors).buildDepError "basic-prelude"))
          (hsPkgs."github" or ((hsPkgs.pkgs-errors).buildDepError "github"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }