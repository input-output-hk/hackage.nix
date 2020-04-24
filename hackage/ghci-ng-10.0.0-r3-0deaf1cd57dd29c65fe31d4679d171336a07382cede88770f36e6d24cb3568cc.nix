{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "ghci-ng"; version = "10.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2005 The University of Glasgow, 2008 Claus Reinke, 2012 Kazu Yamamoto, 2014 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "The GHC Team, Chris Done";
      homepage = "https://github.com/chrisdone/ghci-ng";
      url = "";
      synopsis = "Next generation GHCi";
      description = "GHCi plus extra goodies. See <https://github.com/chrisdone/ghci-ng#features README> for feature list.\n\nNOTE: The feature-set of @ghci-ng-10.0.0@ has been merged back upstream and is therefore available in GHCi 8.0 proper!";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghci-ng" = {
          depends = ((pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc")) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.8") [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ]) ++ (if system.isWindows
            then [
              (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
              ]
            else [
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              ]);
          buildable = true;
          };
        };
      };
    }