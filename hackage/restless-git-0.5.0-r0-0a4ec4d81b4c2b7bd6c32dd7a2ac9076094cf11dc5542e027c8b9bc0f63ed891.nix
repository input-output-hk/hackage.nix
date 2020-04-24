{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "restless-git"; version = "0.5.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "mikael@brockman.se";
      author = "Mikael Brockman";
      homepage = "https://github.com/lessrest/restless-git";
      url = "";
      synopsis = "Easy Git repository serialization";
      description = "This package defines a simple way to serialize state as a nested file\nhierarchy saved in a Git repository.\nIt is still quite inflexible, and rather slow because it repeatedly\ninvokes Git's plumbing commands.\nIt used to be implemented with libgit2, but I found it desirable to\navoid FFI.\nAny way to make it faster without FFI would be great.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."HSH" or ((hsPkgs.pkgs-errors).buildDepError "HSH"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."restless-git" or ((hsPkgs.pkgs-errors).buildDepError "restless-git"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }