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
    flags = { gui = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "gt-tools"; version = "0.1.4.1"; };
      license = "LicenseRef-GPL";
      copyright = "Mikhail S. Pobolovets 2009-2010";
      maintainer = "Mikhail S. Pobolovets <styx.mp@gmail.com>";
      author = "Mikhail S. Pobolovets";
      homepage = "http://github.com/styx/gtc";
      url = "git://github.com/styx/gtc.git";
      synopsis = "Console and GUI interface for Google Translate service";
      description = "This package consist from console backend, GUI backend and Core module\nfor Google Translate service. It allows you to translate words and sentences\nbetween different languages.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gtc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."url" or (buildDepError "url"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          };
        "gtg" = {
          depends = (pkgs.lib).optionals (flags.gui) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."url" or (buildDepError "url"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."glade" or (buildDepError "glade"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          };
        };
      };
    }