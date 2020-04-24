{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "alex"; version = "3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Chis Dornan, Simon Marlow";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Chris Dornan and Simon Marlow";
      homepage = "http://www.haskell.org/alex/";
      url = "";
      synopsis = "Alex is a tool for generating lexical analysers in Haskell";
      description = "Alex is a tool for generating lexical analysers in Haskell.\nIt takes a description of tokens based on regular\nexpressions and generates a Haskell module containing code\nfor scanning text efficiently. It is similar to the tool\nlex or flex for C/C++.\n\nChanges in 3.1.1:\n\n* Bug fixes (#24, #30, #31, #32)\n\nChanges in 3.1.0:\n\n* necessary changes to work with GHC 7.8.1";
      buildType = "Custom";
      };
    components = {
      exes = {
        "alex" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]);
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }