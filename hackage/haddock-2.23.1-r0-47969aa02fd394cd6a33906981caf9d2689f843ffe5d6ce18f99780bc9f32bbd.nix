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
    flags = { in-ghc-tree = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "haddock"; version = "2.23.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow, David Waern";
      maintainer = "Alec Theriault <alec.theriault@gmail.com>, Alex Biehl <alexbiehl@gmail.com>, Simon Hengel <sol@typeful.net>, Mateusz Kowalczyk <fuuzetsu@fuuzetsu.co.uk>";
      author = "Simon Marlow, David Waern";
      homepage = "http://www.haskell.org/haddock/";
      url = "";
      synopsis = "A documentation-generation tool for Haskell libraries";
      description = "This is Haddock, a tool for automatically generating documentation\nfrom annotated Haskell source code. It is primary intended for documenting\nlibrary interfaces, but it should be useful for any kind of Haskell code.\n\nHaddock lets you write documentation annotations next to the definitions of\nfunctions and types in the source code, in a syntax that is easy on the eye\nwhen writing the source code (no heavyweight mark-up).\n\nHaddock understands Haskell's module system, so you can structure your code\nhowever you like without worrying that internal structure will be exposed in\nthe generated documentation. For example, it is common to implement a library\nin several modules, but define the external API by having a single module\nwhich re-exports parts of these implementation modules. Using Haddock, you can\nstill write documentation annotations next to the actual definitions of the\nfunctions and types in the library, but the documentation annotations from the\nimplementation will be propagated to the external API when the documentation is\ngenerated. Abstract types and classes are handled correctly. In fact, even\nwithout any documentation annotations, Haddock can generate useful documentation\nfrom your source code.\n\n<<https://cdn.rawgit.com/haskell/haddock/ghc-8.8/doc/cheatsheet/haddocks.svg>>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haddock" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            ] ++ (if flags.in-ghc-tree
            then [
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."deepseq" or (buildDepError "deepseq"))
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."xhtml" or (buildDepError "xhtml"))
              (hsPkgs."ghc-boot" or (buildDepError "ghc-boot"))
              (hsPkgs."ghc" or (buildDepError "ghc"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."parsec" or (buildDepError "parsec"))
              (hsPkgs."text" or (buildDepError "text"))
              (hsPkgs."transformers" or (buildDepError "transformers"))
              ]
            else [ (hsPkgs."haddock-api" or (buildDepError "haddock-api")) ]);
          buildable = true;
          };
        };
      tests = {
        "html-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haddock-test" or (buildDepError "haddock-test"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.haddock or (pkgs.buildPackages.haddock or (buildToolDepError "haddock")))
            ];
          buildable = true;
          };
        "hypsrc-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haddock-test" or (buildDepError "haddock-test"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.haddock or (pkgs.buildPackages.haddock or (buildToolDepError "haddock")))
            ];
          buildable = true;
          };
        "latex-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haddock-test" or (buildDepError "haddock-test"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.haddock or (pkgs.buildPackages.haddock or (buildToolDepError "haddock")))
            ];
          buildable = true;
          };
        "hoogle-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haddock-test" or (buildDepError "haddock-test"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.haddock or (pkgs.buildPackages.haddock or (buildToolDepError "haddock")))
            ];
          buildable = true;
          };
        };
      };
    }