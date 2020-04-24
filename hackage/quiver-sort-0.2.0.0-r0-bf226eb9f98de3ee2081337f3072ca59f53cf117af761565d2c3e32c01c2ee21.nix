{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quiver-sort"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Sort the values in a quiver";
      description = "Allows sorting values within a Quiver, including using external\nfiles for large/long pipelines.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."quiver" or ((hsPkgs.pkgs-errors).buildDepError "quiver"))
          (hsPkgs."quiver-binary" or ((hsPkgs.pkgs-errors).buildDepError "quiver-binary"))
          (hsPkgs."quiver-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "quiver-bytestring"))
          (hsPkgs."quiver-groups" or ((hsPkgs.pkgs-errors).buildDepError "quiver-groups"))
          (hsPkgs."quiver-instances" or ((hsPkgs.pkgs-errors).buildDepError "quiver-instances"))
          (hsPkgs."quiver-interleave" or ((hsPkgs.pkgs-errors).buildDepError "quiver-interleave"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "sorting-tests" = {
          depends = [
            (hsPkgs."quiver-sort" or ((hsPkgs.pkgs-errors).buildDepError "quiver-sort"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."quiver" or ((hsPkgs.pkgs-errors).buildDepError "quiver"))
            (hsPkgs."quiver-instances" or ((hsPkgs.pkgs-errors).buildDepError "quiver-instances"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }