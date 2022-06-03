{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      tfrandom = false;
      ghcapi = true;
      ghcapicompat = false;
      readfile = true;
      readfileexts = false;
      debug = false;
      networkuri = true;
      semigroup = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "MagicHaskeller"; version = "0.9.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Susumu Katayama <skata@cs.miyazaki-u.ac.jp>";
      author = "Susumu Katayama";
      homepage = "http://nautilus.cs.miyazaki-u.ac.jp/~skata/MagicHaskeller.html";
      url = "";
      synopsis = "Automatic inductive functional programmer by systematic search";
      description = "MagicHaskeller is an inductive functional programming system for Haskell.\nThis package contains the MagicHaskeller library, which can be used within GHCi or as an API for inductive program synthesis.\nIt also contains the MagicHaskeller executable that is a standalone synthesis program which can be used interactively or as a backend server,\nand the MagicHaskeller.cgi executable that is a CGI frontend for providing the Web interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ] ++ (if flags.tfrandom
          then [
            (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
            ]
          else [
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
            ])) ++ (pkgs.lib).optionals (flags.ghcapi && !system.isWindows && !(compiler.isGhcjs && true)) ([
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          ] ++ (if flags.ghcapicompat
          then [
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-api-compat" or (errorHandler.buildDepError "ghc-api-compat"))
            ]
          else [
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            ]))) ++ (pkgs.lib).optional (flags.readfile) (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))) ++ (pkgs.lib).optional (flags.readfileexts) (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))) ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "MagicHaskeller" = {
          depends = (((([
            (hsPkgs."MagicHaskeller" or (errorHandler.buildDepError "MagicHaskeller"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optional (flags.tfrandom) (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))) ++ (pkgs.lib).optional (flags.readfile) (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))) ++ [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ]) ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "MagicHaskeller.cgi" = {
          depends = ((([
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."MagicHaskeller" or (errorHandler.buildDepError "MagicHaskeller"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."mueval" or (errorHandler.buildDepError "mueval"))) ++ (pkgs.lib).optional (flags.tfrandom) (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))) ++ [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ]) ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }