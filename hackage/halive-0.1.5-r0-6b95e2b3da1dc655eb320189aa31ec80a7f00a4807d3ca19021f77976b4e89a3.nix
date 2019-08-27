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
      identifier = { name = "halive"; version = "0.1.5"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "lukexi@me.com";
      author = "Luke Iannini";
      homepage = "https://github.com/lukexi/halive";
      url = "";
      synopsis = "A live recompiler";
      description = "Live recompiler for Haskell\n\n<<http://lukexi.github.io/HaliveDemo.gif>>\n\n/Usage:/\n\n> halive path/to/myfile.hs [optionally any/extra include/dirs ..] [-f|--file-type additional file type] -- [args to app]\n\nAvailable options:\n\n@-f, --file-type <file type>@ - Custom file type to watch for changes (e.g. @-f html@)\n@-c, --compiled@ - Use faster compiled code at the expense of recompilation speed\n\nSee <https://github.com/lukexi/halive/blob/master/README.md README>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."foreign-store" or (buildDepError "foreign-store"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."signal" or (buildDepError "signal"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8") (hsPkgs."ghc-boot" or (buildDepError "ghc-boot"));
        };
      exes = {
        "halive" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."halive" or (buildDepError "halive"))
            ];
          };
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."halive" or (buildDepError "halive"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        "demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gl" or (buildDepError "gl"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."halive" or (buildDepError "halive"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."foreign-store" or (buildDepError "foreign-store"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ];
          };
        "subhalive" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."halive" or (buildDepError "halive"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          };
        "compileexpr" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."halive" or (buildDepError "halive"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          };
        "testghc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        };
      };
    }