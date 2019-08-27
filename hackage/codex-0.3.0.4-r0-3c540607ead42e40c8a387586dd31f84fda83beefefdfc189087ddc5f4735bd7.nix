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
      identifier = { name = "codex"; version = "0.3.0.4"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "alois.cochard@gmail.com";
      author = "Alois Cochard";
      homepage = "http://github.com/aloiscochard/codex";
      url = "";
      synopsis = "A ctags file generator for cabal project dependencies.";
      description = "This tool download and cache the source code of packages in your local hackage,\nit can then use this cache to generate `tags` files aggregating the sources of all the dependencies of your cabal projects.\n\nYou basically do `codex update` in your cabal project directory and you'll get a file\n(`codex.tags` by default, or `TAGS` when using emacs format) that you can use in your\nfavorite text editor.\n\nUsage overview can be found in the <http://github.com/aloiscochard/codex#codex README>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hackage-db" or (buildDepError "hackage-db"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."machines" or (buildDepError "machines"))
          (hsPkgs."machines-directory" or (buildDepError "machines-directory"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          ];
        };
      exes = {
        "codex" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hackage-db" or (buildDepError "hackage-db"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."wreq" or (buildDepError "wreq"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."codex" or (buildDepError "codex"))
            ];
          };
        };
      };
    }