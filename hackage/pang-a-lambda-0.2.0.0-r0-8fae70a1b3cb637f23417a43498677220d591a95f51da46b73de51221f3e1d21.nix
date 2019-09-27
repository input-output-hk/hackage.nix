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
    flags = { experiments = false; };
    package = {
      specVersion = "1.16";
      identifier = { name = "pang-a-lambda"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez";
      homepage = "";
      url = "";
      synopsis = "A super-pang clone";
      description = "An FRP implementation of superpang";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pang-a-lambda-dumbplayer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (buildDepError "SDL-gfx"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-arrowup" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (buildDepError "SDL-gfx"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-stickyarrow" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (buildDepError "SDL-gfx"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-player" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (buildDepError "SDL-gfx"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-physics" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."IfElse" or (buildDepError "IfElse"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (buildDepError "SDL-gfx"))
            (hsPkgs."SDL-ttf" or (buildDepError "SDL-ttf"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-circlingboxes" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-splittingboxes" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-split" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-splitballs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."IfElse" or (buildDepError "IfElse"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (buildDepError "SDL-gfx"))
            (hsPkgs."SDL-ttf" or (buildDepError "SDL-ttf"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."IfElse" or (buildDepError "IfElse"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or (buildDepError "SDL-gfx"))
            (hsPkgs."SDL-ttf" or (buildDepError "SDL-ttf"))
            ];
          buildable = true;
          };
        };
      };
    }