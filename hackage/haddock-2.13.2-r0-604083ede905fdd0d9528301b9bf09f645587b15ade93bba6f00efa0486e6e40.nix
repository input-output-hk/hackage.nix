{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { in-ghc-tree = false; dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "haddock"; version = "2.13.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow, David Waern";
      maintainer = "David Waern <david.waern@gmail.com>";
      author = "Simon Marlow, David Waern";
      homepage = "http://www.haskell.org/haddock/";
      url = "";
      synopsis = "A documentation-generation tool for Haskell libraries";
      description = "Haddock is a documentation-generation tool for Haskell\nlibraries";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          ] ++ (pkgs.lib).optional (!flags.in-ghc-tree) (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"));
        build-tools = (pkgs.lib).optionals (!flags.in-ghc-tree) [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
          ];
        buildable = if flags.in-ghc-tree then false else true;
        };
      exes = {
        "haddock" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ] ++ (if flags.in-ghc-tree
            then [
              (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
              (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
              (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
              (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
              (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
              ]
            else [
              (hsPkgs."haddock" or ((hsPkgs.pkgs-errors).buildDepError "haddock"))
              ]);
          buildable = true;
          };
        };
      tests = {
        "html-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."haddock" or ((hsPkgs.pkgs-errors).buildDepError "haddock"))
            ];
          buildable = true;
          };
        };
      };
    }