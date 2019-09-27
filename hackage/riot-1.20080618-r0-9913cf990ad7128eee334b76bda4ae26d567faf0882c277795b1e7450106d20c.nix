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
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "riot"; version = "1.20080618"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Tuomo Valkonen";
      author = "Tuomo Valkonen";
      homepage = "http://modeemi.fi/~tuomov/riot/";
      url = "";
      synopsis = "Riot is an Information Organisation Tool";
      description = "Riot is a tool for keeping (textual) information organised. Some people\ncall such programs 'outliners'. It is a todo list and note manager, and\na manager for whatever information one might collect, that I wrote\nbecause I couldn't find a single one that was at all close to what I\nwanted. Riot has an interface resembling those of slrn and mutt and all\ntext editing is done with an external editor: Riot is simply a\nnice-to-use browser for collections of text.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "riot" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."packedstring" or (buildDepError "packedstring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            ];
          libs = [ (pkgs."ncursesw" or (sysDepError "ncursesw")) ];
          buildable = true;
          };
        };
      };
    }