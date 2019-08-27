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
    flags = { dockerfmt = false; hadolint = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "language-dockerfile"; version = "0.3.6.0"; };
      license = "GPL-3.0-only";
      copyright = "Lukas Martinelli, Copyright (c) 2016,\nPedro Tacla Yamada, Copyright (c) 2016";
      maintainer = "tacla.yamada@gmail.com";
      author = "Lukas Martinelli,\nPedro Tacla Yamada";
      homepage = "https://github.com/beijaflor-io/language-dockerfile#readme";
      url = "";
      synopsis = "Dockerfile linter, parser, pretty-printer and embedded DSL";
      description = "Forked from @hadolint@.\n\nAll functions for parsing, printing and writting Dockerfiles are exported through @Language.Dockerfile@. For more fine-grained operations look for specific modules that implement a certain functionality.\n\nThere are two flags in this package, which enable building two executables:\n\n- @hadolint@ Enables building the @hadolint@ executable, though you might prefer to use the hadolint package directly\n- @dockerfmt@ Builds example pretty-printer usage, which reads a Dockerfile and pretty-prints it to stdout\n\nSee the <https://github.com/beijaflor-io/haskell-language-dockerfile GitHub project> for the source-code and examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ShellCheck" or (buildDepError "ShellCheck"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."th-lift" or (buildDepError "th-lift"))
          (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."Glob" or (buildDepError "Glob"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        };
      exes = {
        "dockerfmt" = {
          depends = [
            (hsPkgs."ShellCheck" or (buildDepError "ShellCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."language-dockerfile" or (buildDepError "language-dockerfile"))
            ];
          };
        "hadolint" = {
          depends = [
            (hsPkgs."ShellCheck" or (buildDepError "ShellCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."language-dockerfile" or (buildDepError "language-dockerfile"))
            ];
          };
        };
      tests = {
        "hadolint-unit-tests" = {
          depends = [
            (hsPkgs."ShellCheck" or (buildDepError "ShellCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          };
        "hspec" = {
          depends = [
            (hsPkgs."ShellCheck" or (buildDepError "ShellCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."language-dockerfile" or (buildDepError "language-dockerfile"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      };
    }