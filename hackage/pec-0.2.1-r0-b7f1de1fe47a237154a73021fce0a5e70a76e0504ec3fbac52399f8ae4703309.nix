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
      identifier = { name = "pec"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Brett Letner 2011-2012";
      maintainer = "Brett Letner <brettletner@gmail.com>";
      author = "Brett Letner <brettletner@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "pec embedded compiler";
      description = "The intent of pec is to provide a drop-in replacement for C, but with modern language features.  Pec is a procedural language with a functional/declarative feel.  Programming in pec is very similar to monadic programming in Haskell.  The primary use case for pec is to provide a productive environment for writing safe, efficient, embedded applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."grm" or (buildDepError "grm"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."derive" or (buildDepError "derive"))
          (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."shake" or (buildDepError "shake"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          ];
        buildable = true;
        };
      exes = {
        "pecgen" = {
          depends = [
            (hsPkgs."pec" or (buildDepError "pec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."derive" or (buildDepError "derive"))
            (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."grm" or (buildDepError "grm"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."shake" or (buildDepError "shake"))
            ];
          buildable = true;
          };
        "pec" = {
          depends = [
            (hsPkgs."pec" or (buildDepError "pec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."grm" or (buildDepError "grm"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."shake" or (buildDepError "shake"))
            ];
          buildable = true;
          };
        "pecgencnt" = {
          depends = [
            (hsPkgs."pec" or (buildDepError "pec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."derive" or (buildDepError "derive"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."grm" or (buildDepError "grm"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."shake" or (buildDepError "shake"))
            ];
          buildable = true;
          };
        };
      };
    }