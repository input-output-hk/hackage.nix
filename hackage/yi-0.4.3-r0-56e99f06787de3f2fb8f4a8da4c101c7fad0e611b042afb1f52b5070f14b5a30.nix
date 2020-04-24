{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      ghcapi = false;
      vty = true;
      gtk = true;
      pango = true;
      cocoa = true;
      testing = true;
      };
    package = {
      specVersion = "1.4";
      identifier = { name = "yi"; version = "0.4.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "AUTHORS";
      homepage = "http://haskell.org/haskellwiki/Yi";
      url = "";
      synopsis = "The Haskell-Scriptable Editor";
      description = "Yi is a text editor written in Haskell and extensible in Haskell. The goal of the Yi project is\nto provide a flexible, powerful, and correct editor for haskell hacking.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (pkgs.lib).optional (flags.vty) (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"));
        buildable = true;
        };
      exes = {
        "yi" = {
          depends = (((((([
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."fingertree" or ((hsPkgs.pkgs-errors).buildDepError "fingertree"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
            (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (pkgs.lib).optional (flags.vty) (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))) ++ (pkgs.lib).optional (flags.gtk) (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))) ++ (pkgs.lib).optional (flags.pango) (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))) ++ (pkgs.lib).optionals (flags.cocoa) [
            (hsPkgs."HOC" or ((hsPkgs.pkgs-errors).buildDepError "HOC"))
            (hsPkgs."HOC-AppKit" or ((hsPkgs.pkgs-errors).buildDepError "HOC-AppKit"))
            (hsPkgs."HOC-Foundation" or ((hsPkgs.pkgs-errors).buildDepError "HOC-Foundation"))
            ]) ++ (pkgs.lib).optionals (flags.ghcapi) [
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            ]) ++ (pkgs.lib).optional (flags.testing) (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"));
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