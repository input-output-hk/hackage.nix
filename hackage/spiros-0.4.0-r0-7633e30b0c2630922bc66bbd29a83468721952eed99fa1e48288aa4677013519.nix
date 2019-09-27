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
    flags = {
      develop = false;
      static = false;
      examples = false;
      cpphs = false;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "spiros"; version = "0.4.0"; };
      license = "Apache-2.0";
      copyright = "2019 Sam Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "https://github.com/sboosali/spiros#readme";
      url = "";
      synopsis = "Spiros Boosalis's Custom Prelude";
      description = "My custom prelude.\nI'm @user\\/sboo@ on Hackage, @\\@sboosali@ on GitHub, and @\\/u\\/spirosboosalis@ on reddit.\n\nDiverges slightly from base's: adding, removing, and shadowing.\n\nCompatible with (and built\\/tested against):\n\n* 5 GHCs — from « ghc-7.10.* » (in Debian) to  « ghc-8.6.* » (the latest, circa 2019).\n* GHCJS  — the Haskell→JavaScript transpiler (« ghcjs-8.6.* »).\n* Musl   — « ghc » statically-linked against « libmusl »\n(instead of dynamically-linked against « glibc », the default).\n* 3 OSs — Linux (« linux »), Windows (« win32 »), and MacOS (« darwin »). (Should work on FreeBSD and Andriod, too).\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."cpuinfo" or (buildDepError "cpuinfo"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."string-conv" or (buildDepError "string-conv"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
          ] ++ [ (hsPkgs."deepseq" or (buildDepError "deepseq")) ];
        build-tools = (pkgs.lib).optional (flags.cpphs) (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (buildToolDepError "cpphs")));
        buildable = true;
        };
      exes = {
        "example-spiros" = {
          depends = [
            (hsPkgs."spiros" or (buildDepError "spiros"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          build-tools = (pkgs.lib).optional (flags.cpphs) (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (buildToolDepError "cpphs")));
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "doc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."spiros" or (buildDepError "spiros"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          build-tools = (pkgs.lib).optional (flags.cpphs) (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (buildToolDepError "cpphs")));
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      };
    }