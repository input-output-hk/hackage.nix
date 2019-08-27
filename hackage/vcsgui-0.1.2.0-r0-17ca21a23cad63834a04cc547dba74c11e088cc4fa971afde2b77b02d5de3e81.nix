let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { gtk3 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "vcsgui"; version = "0.1.2.0"; };
      license = "LicenseRef-GPL";
      copyright = "2011 Stephan Fortelny, Harald Jagenteufel";
      maintainer = "stephanfortelny at gmail.com, h.jagenteufel at gmail.com, hamish.k.mackenzie at gmail.com";
      author = "Stephan Fortelny, Harald Jagenteufel, Hamish Mackenzie";
      homepage = "https://github.com/forste/haskellVCSGUI";
      url = "";
      synopsis = "GUI library for source code management systems";
      description = "Provides library functions to expose some commonly needed scm tasks to the user.\nUses GTK+ and GTKBuilder to organize and display windows.\nUses vcswrapper to acces the scm functions.\nCurrently git, SVN and mercurial (hg) are supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."vcswrapper" or (buildDepError "vcswrapper"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (if flags.gtk3
          then [ (hsPkgs."gtk3" or (buildDepError "gtk3")) ]
          else [ (hsPkgs."gtk" or (buildDepError "gtk")) ]);
        };
      exes = {
        "vcsgui" = {
          depends = [
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."vcswrapper" or (buildDepError "vcswrapper"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (if flags.gtk3
            then [ (hsPkgs."gtk3" or (buildDepError "gtk3")) ]
            else [ (hsPkgs."gtk" or (buildDepError "gtk")) ]);
          };
        "vcsgui-askpass" = {
          depends = [
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."vcswrapper" or (buildDepError "vcswrapper"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (if flags.gtk3
            then [ (hsPkgs."gtk3" or (buildDepError "gtk3")) ]
            else [ (hsPkgs."gtk" or (buildDepError "gtk")) ]);
          };
        };
      };
    }