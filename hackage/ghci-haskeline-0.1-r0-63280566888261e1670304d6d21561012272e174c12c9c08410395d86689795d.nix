{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ghci-haskeline"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "Judah Jacobson <judah.jacobson@gmail.com>";
      author = "";
      homepage = "http://code.haskell.org/~judah/ghci-haskeline";
      url = "";
      synopsis = "An implementation of ghci using the Haskeline line-input library.";
      description = "This package reimplements ghci using the GHC API and the Haskeline\npackage for line input in command-line programs.\n\nThis is an unofficial package; thus any bugs may be the fault of\nthe maintainer rather than of the GHC team.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghci-haskeline" = {
          depends = [
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            ] ++ (if system.isWindows
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