{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dynamic = true; vty = true; gtk = true; cocoa = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "yi"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "AUTHORS";
      homepage = "http://haskell.org/haskellwiki/Yi";
      url = "";
      synopsis = "The Haskell-Scriptable Editor";
      description = "Yi is a text editor written and extensible in Haskell. The goal of Yi is\nto provide a flexible, powerful, and correct editor core which is dynamically\nscriptable in Haskell.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "yi" = {
          depends = ((([
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."fingertree" or ((hsPkgs.pkgs-errors).buildDepError "fingertree"))
            (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            ] ++ (pkgs.lib).optional (flags.dynamic) (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))) ++ (pkgs.lib).optional (flags.vty) (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))) ++ (pkgs.lib).optional (flags.gtk) (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))) ++ (pkgs.lib).optionals (flags.cocoa) [
            (hsPkgs."HOC" or ((hsPkgs.pkgs-errors).buildDepError "HOC"))
            (hsPkgs."HOC-AppKit" or ((hsPkgs.pkgs-errors).buildDepError "HOC-AppKit"))
            (hsPkgs."HOC-Foundation" or ((hsPkgs.pkgs-errors).buildDepError "HOC-Foundation"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
            ];
          buildable = if !(flags.vty || flags.gtk || flags.cocoa)
            then false
            else true;
          };
        };
      };
    }