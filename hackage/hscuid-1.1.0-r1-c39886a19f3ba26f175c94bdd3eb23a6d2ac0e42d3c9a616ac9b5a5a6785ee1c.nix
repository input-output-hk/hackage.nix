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
      specVersion = "1.8";
      identifier = { name = "hscuid"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dan.buckmaster@gmail.com";
      author = "Daniel Buckmaster";
      homepage = "https://github.com/eightyeight/hscuid";
      url = "";
      synopsis = "Collision-resistant IDs";
      description = "CUIDs are designed for horizontal scalability and collision\nresistance.\nRead more about them at <https://usecuid.org usecuid.org>.\nHere's everything you need to know:\n\n>>> import Web.Cuid (newCuid, newSlug)\n>>> newCuid\n\"cib3c3tcu0000zwowx9ho2gh4\"\n>>> newSlug\n\"c900001wmf\"\n\nThis module does not use crypto-strength sources of\nrandomness.\nUse at your own peril!\n\nFor better or worse, this module uses semantic versioning\n(see <http://semver.org/ semver.org>).\nThat is, if you want to depend upon, for example, version 1\nof the API, you should add @hscuid ==1.*@ to your Cabal\nfile. No breaking changes will be (deliberately) introduced\nunder that version number.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."hostname" or (buildDepError "hostname"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (buildDepError "unix")) ]);
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (sysDepError "kernel32"));
        buildable = true;
        };
      tests = {
        "hscuid-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hscuid" or (buildDepError "hscuid"))
            ];
          buildable = true;
          };
        };
      };
    }