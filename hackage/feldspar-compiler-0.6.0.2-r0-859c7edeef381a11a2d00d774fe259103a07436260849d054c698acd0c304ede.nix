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
      specVersion = "1.14";
      identifier = { name = "feldspar-compiler"; version = "0.6.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Emil Axelsson, Gergely Dévai,\nAnders Persson, Josef Svenningsson\nCopyright (c) 2009-2011, ERICSSON AB";
      maintainer = "deva@inf.elte.hu";
      author = "Feldspar group,\nEotvos Lorand University Faculty of Informatics";
      homepage = "https://feldspar.github.com";
      url = "";
      synopsis = "Compiler for the Feldspar language";
      description = "Feldspar (**F**unctional **E**mbedded **L**anguage for **DSP**\nand **PAR**allelism) is an embedded DSL for describing digital\nsignal processing algorithms.\nThis library (FeldsparCompiler) contains a prototype compiler\nthat supports C code generation from programs written in this\nlanguage both according to ANSI C and also targeted to a real\nDSP HW.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."feldspar-language" or (buildDepError "feldspar-language"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."MonadCatchIO-mtl" or (buildDepError "MonadCatchIO-mtl"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."syntactic" or (buildDepError "syntactic"))
          ];
        };
      exes = {
        "feldspar" = {
          depends = [
            (hsPkgs."feldspar-language" or (buildDepError "feldspar-language"))
            (hsPkgs."feldspar-compiler" or (buildDepError "feldspar-compiler"))
            (hsPkgs."syntactic" or (buildDepError "syntactic"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."MonadCatchIO-mtl" or (buildDepError "MonadCatchIO-mtl"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            ];
          };
        };
      };
    }