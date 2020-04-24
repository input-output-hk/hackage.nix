{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pier"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "judah.jacobson@gmail.com";
      author = "";
      homepage = "https://github.com/judah/pier#readme";
      url = "";
      synopsis = "Yet another Haskell build system.";
      description = "Pier is a command-line tool for building Haskell projects.  It is\nsimilar in purpose to <https://www.haskellstack.org Stack>,\nbut explores a different design:\n\n* Pier implements the fine-grained Haskell build logic from (nearly)\nscratch.  In contrast, Stack relies on Cabal to implement most of its\nbuild steps, giving it a more coarse control over the build.\n* Pier uses general-purpose libraries for implementing build systems, namely\n<https://shakebuild.com Shake> and <https://hackage.haskell.org/package/pier-core pier-core>.\n\nFor more information, see the official <https://github.com/judah/pier/blob/master/Readme.md documentation>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pier" = {
          depends = [
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."binary-orphans" or ((hsPkgs.pkgs-errors).buildDepError "binary-orphans"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pier-core" or ((hsPkgs.pkgs-errors).buildDepError "pier-core"))
            (hsPkgs."shake" or ((hsPkgs.pkgs-errors).buildDepError "shake"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }