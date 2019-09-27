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
      identifier = { name = "packunused"; version = "0.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Herbert Valerio Riedel";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/packunused";
      url = "";
      synopsis = "Tool for detecting redundant Cabal package dependencies";
      description = "This simple CLI tool allows to find out which of the packages listed as\n@build-depends@ in a Cabal package description file are redundant.\n\n@packunused@ works by taking advantage of GHC's\n@-ddump-minimal-imports@ feature which creates @.import@ files for\neach compiled module containing a /minimal/ set of explicit import\ndeclarations. These @.import@ files together with Cabal's generated\npackage configuration meta-data is analyzed by @packunused@ to\ndetect potentially redundant package dependencies.\n\nIn order to use @packunused@ you have to configure the package as\nusual. See the example session below:\n\n> cabal clean\n> rm *.imports\n> cabal configure -O0 --disable-library-profiling\n> cabal build --ghc-option=-ddump-minimal-imports\n> packunused\n\nThe @-O0 --disable-library-profiling@ options are just to speed up\ncompilation. In some cases you might want to pass additional options\nto the @configure@ step, such as @--enable-benchmark@ or\n@--enable-tests@.\n\nWhen run, @packunused@ prints a report to standard output listing\nits findings for each component built. The following is an example\nfor the @packunused@ package itself, with a redundant dependency\nadded for demonstration on purpose:\n\n> detected package components\n> ~~~~~~~~~~~~~~~~~~~~~~~~~~~\n>\n>  - executable(s): packunused\n>\n> (component names suffixed with '*' are not configured to be built)\n>\n> executable(packunused)\n> ~~~~~~~~~~~~~~~~~~~~~~\n>\n> The following package dependencies seem redundant:\n>\n>  - criterion-0.6.2.0-9dd4d764629a47662168743b2dfda9bc\n>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "packunused" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }