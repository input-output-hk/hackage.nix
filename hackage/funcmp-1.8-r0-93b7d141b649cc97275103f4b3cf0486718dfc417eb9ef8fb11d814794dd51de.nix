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
      specVersion = "1.6";
      identifier = { name = "funcmp"; version = "1.8"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Meik Hellmund, Ralf Hinze, Joachim Korittky,\nMarco Kuhlmann, Ferenc Wágner, Peter Simons,\nRobin Green";
      homepage = "http://savannah.nongnu.org/projects/funcmp/";
      url = "";
      synopsis = "Functional MetaPost";
      description = "Functional MetaPost is a Haskell frontend to the\nMetaPost language by John Hobby. Users write their\ngraphics as Haskell programs, which then emit MetaPost\ncode that can be compiled into encapsulated PostScript\nfiles and smoothly included into e.g. LaTeX.\n\nA collection of useful examples how to use Functional\nMetaPost can be found in the user's manual at\n<http://download.savannah.nongnu.org/releases/funcmp/Manual_eng.ps>. The\ndocument doesn't offer very much detail in terms of\nexplanations, but the code samples are quite helpful.\n\nFurther documentation can be found in the original\nthesis that describes the implementation. The text is\navailable in German at\n<http://download.savannah.nongnu.org/releases/funcmp/Thesis.ps> and in\nEnglish at\n<http://download.savannah.nongnu.org/releases/funcmp/Thesis_eng.ps>.\n\nLast but not least, there is a tutorial that offers many\nhelpful examples available in German at\n<http://download.savannah.nongnu.org/releases/funcmp/Tutorial.ps> and in\nEnglish at\n<http://download.savannah.nongnu.org/releases/funcmp/Tutorial_eng.ps>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        };
      };
    }