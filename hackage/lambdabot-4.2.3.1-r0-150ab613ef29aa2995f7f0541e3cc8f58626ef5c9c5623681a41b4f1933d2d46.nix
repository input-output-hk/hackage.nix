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
      identifier = { name = "lambdabot"; version = "4.2.3.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Cale Gibbard <cgibbard@gmail.com>";
      author = "Don Stewart";
      homepage = "http://haskell.org/haskellwiki/Lambdabot";
      url = "";
      synopsis = "Lambdabot is a development tool and advanced IRC bot";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nIt operates as a command line tool, embedded in an editor,\nembedded in GHCi, via internet relay chat and on the web.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        };
      exes = {
        "lambdabot" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."oeis" or (buildDepError "oeis"))
            (hsPkgs."lambdabot-utils" or (buildDepError "lambdabot-utils"))
            (hsPkgs."show" or (buildDepError "show"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."brainfuck" or (buildDepError "brainfuck"))
            (hsPkgs."unlambda" or (buildDepError "unlambda"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."numbers" or (buildDepError "numbers"))
            (hsPkgs."logict" or (buildDepError "logict"))
            (hsPkgs."IOSpec" or (buildDepError "IOSpec"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."data-memocombinators" or (buildDepError "data-memocombinators"))
            (hsPkgs."arrows" or (buildDepError "arrows"))
            ];
          };
        };
      };
    }