{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hlibgit2"; version = "0.3.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "Sakari Jokinen, Jacob Stanley, John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to libgit2.";
      description = "Bindings to libgit2 v0.16.0-471-g5b9fac3";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          ];
        libs = [ (pkgs."git2" or ((hsPkgs.pkgs-errors).sysDepError "git2")) ];
        buildable = true;
        };
      tests = {
        "smoke" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hlibgit2" or ((hsPkgs.pkgs-errors).buildDepError "hlibgit2"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }