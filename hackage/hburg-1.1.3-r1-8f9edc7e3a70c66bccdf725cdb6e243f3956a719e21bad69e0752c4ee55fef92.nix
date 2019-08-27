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
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hburg"; version = "1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "igor@bytelabs.org";
      author = "Igor Boehm <igor@bytelabs.org>";
      homepage = "https://www.bytelabs.org/project/haskell-bottom-up-rewrite-generator/";
      url = "";
      synopsis = "Haskell Bottom Up Rewrite Generator";
      description = "HBURG is a program that generates tree parsers for cost-augmented\ntree grammars. It is useful for writing code generators for compilers.\nGiven a mapping of a tree structured intermediate representation onto\ntarget machine instructions, HBURG generates a code generator that can\nbe plugged into the instruction selection phase of a compiler. For more\ninformation see <https://www.bytelabs.org/pub/papers/hburg07.pdf>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hburg" = {
          depends = [
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."array" or (buildDepError "array"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (buildToolDepError "happy")))
            ];
          };
        };
      };
    }