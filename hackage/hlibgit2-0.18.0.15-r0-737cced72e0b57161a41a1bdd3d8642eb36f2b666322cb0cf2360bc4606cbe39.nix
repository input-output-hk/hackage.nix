{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hlibgit2"; version = "0.18.0.15"; };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley, Sakari Jokinen, Jacob Stanleyyeah,";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to libgit2";
      description = "Bindings to libgit2 v0.18.0.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          ];
        libs = (pkgs.lib).optionals (!system.isWindows) [
          (pkgs."ssl" or ((hsPkgs.pkgs-errors).sysDepError "ssl"))
          (pkgs."crypto" or ((hsPkgs.pkgs-errors).sysDepError "crypto"))
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          ];
        buildable = true;
        };
      tests = {
        "smoke" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hlibgit2" or ((hsPkgs.pkgs-errors).buildDepError "hlibgit2"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.git or (pkgs.buildPackages.git or ((hsPkgs.pkgs-errors).buildToolDepError "git")))
            ];
          buildable = true;
          };
        };
      };
    }