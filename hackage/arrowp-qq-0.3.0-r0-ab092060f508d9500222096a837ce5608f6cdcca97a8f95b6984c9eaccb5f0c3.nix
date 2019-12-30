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
    flags = { debug = false; testexamples = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "arrowp-qq"; version = "0.3.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "John 'Ski <riuga@tuta.io>";
      author = "Jose Iborra <pepeiborra@gmail.com>";
      homepage = "https://github.com/pepeiborra/arrowp";
      url = "";
      synopsis = "A preprocessor and quasiquoter for translating arrow notation";
      description = "A suite of preprocessor and quasiquoter to desugar arrow notation built on top of Ross Paterson's arrowp and the venerable haskell-src-exts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."NoHoed" or (buildDepError "NoHoed"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."haskell-src-exts-util" or (buildDepError "haskell-src-exts-util"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
          ] ++ (if flags.debug
          then [
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."haskell-src-exts-observe" or (buildDepError "haskell-src-exts-observe"))
            ]
          else [ (hsPkgs."NoHoed" or (buildDepError "NoHoed")) ]);
        buildable = true;
        };
      exes = {
        "arrowp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."arrowp-qq" or (buildDepError "arrowp-qq"))
            ] ++ (if flags.debug
            then [ (hsPkgs."Hoed" or (buildDepError "Hoed")) ]
            else [ (hsPkgs."NoHoed" or (buildDepError "NoHoed")) ]);
          buildable = true;
          };
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."arrows" or (buildDepError "arrows"))
            (hsPkgs."arrowp-qq" or (buildDepError "arrowp-qq"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = if flags.testexamples then true else false;
          };
        };
      };
    }