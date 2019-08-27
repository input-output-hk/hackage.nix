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
      identifier = { name = "hdevtools"; version = "0.1.4.0"; };
      license = "MIT";
      copyright = "See AUTHORS file";
      maintainer = "Sebastian Nagel <sebastian.nagel@ncoding.at>,\nRanjit Jhala <jhala@cs.ucsd.edu>";
      author = "Bit Connor";
      homepage = "https://github.com/hdevtools/hdevtools/";
      url = "";
      synopsis = "Persistent GHC powered background server for FAST haskell development tools";
      description = "'hdevtools' is a backend for text editor plugins, to allow for things such as\nsyntax and type checking of Haskell code, and retrieving type information, all\ndirectly from within your text editor.\n\nThe advantage that 'hdevtools' has over competitors, is that it runs silently\nin a persistent background process, and therefore is able to keeps all of your\nHaskell modules and dependent libraries loaded in memory. This way, when you\nchange only a single source file, only it needs to be reloaded and rechecked,\ninstead of having to reload everything.\n\nThis makes 'hdevtools' very fast for checking syntax and type errors (runs just\nas fast as the ':reload' command in GHCi).\n\nIn fact, syntax and type checking is so fast, that you can safely enable auto\nchecking on every save. Even for huge projects, checking is nearly instant.\n\nOnce you start using 'hdevtools' and you get used to having your errors shown\nto you instantly (without having to switch back and forth between GHCi and your\neditor), and shown directly on your code, in your editor (without having to\nwait forever for GHC to run) you will wonder how you ever lived without it.\n\nIn addition to checking Haskell source code for errors, 'hdevtools' has tools\nfor getting info about identifiers, and getting type information for snippets\nof code.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hdevtools" = {
          depends = ((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."Cabal" or (buildDepError "Cabal"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.7") (hsPkgs."Cabal" or (buildDepError "Cabal"))) ++ (pkgs.lib).optionals (compiler.isGhc && ((compiler.version).ge "7.9" && (compiler.version).lt "8.0")) [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."bin-package-db" or (buildDepError "bin-package-db"))
            ]) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "8.0") [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."ghc-boot" or (buildDepError "ghc-boot"))
            ];
          };
        };
      };
    }