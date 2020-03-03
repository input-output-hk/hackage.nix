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
    flags = { fastcompile = false; examples = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "Chart-fltkhs"; version = "0.1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael.oswald@onikudaki.net";
      author = "Michael Oswald";
      homepage = "https://github.com/oswald2/Chart-fltkhs";
      url = "";
      synopsis = "A backend for the Chart library for FLTKHS";
      description = "A backend for the Chart library for FLTKHS, based on FLTKs native drawing functions.\nNote that FLTK's native drawing functions do not support transparency (alpha channel)\nnatively, so charts depending on transparency will not look right.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."Chart" or (buildDepError "Chart"))
          (hsPkgs."operational" or (buildDepError "operational"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          ];
        buildable = true;
        };
      exes = {
        "Example1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."Chart-fltkhs" or (buildDepError "Chart-fltkhs"))
            ];
          buildable = if flags.examples then true else false;
          };
        "Example2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."Chart-fltkhs" or (buildDepError "Chart-fltkhs"))
            ];
          buildable = if flags.examples then true else false;
          };
        "Example3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."Chart-fltkhs" or (buildDepError "Chart-fltkhs"))
            ];
          buildable = if flags.examples then true else false;
          };
        "Example4" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."Chart-fltkhs" or (buildDepError "Chart-fltkhs"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = if flags.examples then true else false;
          };
        "Example5" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."Chart-fltkhs" or (buildDepError "Chart-fltkhs"))
            ];
          buildable = if flags.examples then true else false;
          };
        "Example7" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."Chart-fltkhs" or (buildDepError "Chart-fltkhs"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = if flags.examples then true else false;
          };
        "Example8" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."Chart-fltkhs" or (buildDepError "Chart-fltkhs"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = if flags.examples then true else false;
          };
        "Example11" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."Chart-fltkhs" or (buildDepError "Chart-fltkhs"))
            ];
          buildable = if flags.examples then true else false;
          };
        "Example12" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."Chart-fltkhs" or (buildDepError "Chart-fltkhs"))
            ];
          buildable = if flags.examples then true else false;
          };
        "Example13" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."Chart-fltkhs" or (buildDepError "Chart-fltkhs"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }