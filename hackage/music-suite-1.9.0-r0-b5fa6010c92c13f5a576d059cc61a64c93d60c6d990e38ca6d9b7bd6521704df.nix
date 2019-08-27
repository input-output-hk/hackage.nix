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
      specVersion = "1.10";
      identifier = { name = "music-suite"; version = "1.9.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <music-suite-discuss@googlegroups.com>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "A set of libraries for composition, analysis and manipulation of music.";
      description = "This is a package without source code that imports Music Suite(see <http://music-suite.github.io/>).\n\nIt exists so that can install all (stable) packages in the suite as follows:\n\n> cabal install music-suite\n\nIf you wish to install an exerimental package, you can simply install it separately after\ninstalling @music-suite@.\n\n<<https://raw.githubusercontent.com/hanshoglund/music-docs/master/music-suite-deps.png>>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."music-dynamics-literal" or (buildDepError "music-dynamics-literal"))
          (hsPkgs."music-pitch-literal" or (buildDepError "music-pitch-literal"))
          (hsPkgs."abcnotation" or (buildDepError "abcnotation"))
          (hsPkgs."musicxml2" or (buildDepError "musicxml2"))
          (hsPkgs."lilypond" or (buildDepError "lilypond"))
          (hsPkgs."music-score" or (buildDepError "music-score"))
          (hsPkgs."music-pitch" or (buildDepError "music-pitch"))
          (hsPkgs."music-dynamics" or (buildDepError "music-dynamics"))
          (hsPkgs."music-articulation" or (buildDepError "music-articulation"))
          (hsPkgs."music-parts" or (buildDepError "music-parts"))
          (hsPkgs."music-preludes" or (buildDepError "music-preludes"))
          ];
        };
      };
    }