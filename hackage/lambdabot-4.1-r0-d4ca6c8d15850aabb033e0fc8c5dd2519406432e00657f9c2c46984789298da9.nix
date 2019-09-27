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
      specVersion = "0";
      identifier = { name = "lambdabot"; version = "4.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://haskell.org/haskellwiki/Lambdabot";
      url = "";
      synopsis = "A multi-talented IRC bot";
      description = "Lambdabot is a Haskell development tool, written in Haskell.\nIt operates as a command line tool, embedded in an editor,\nembedded in GHCi, via internet relay chat and on the web.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "BotPP" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."arrows" or (buildDepError "arrows"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."oeis" or (buildDepError "oeis"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          buildable = true;
          };
        "lambdabot" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."arrows" or (buildDepError "arrows"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."oeis" or (buildDepError "oeis"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          buildable = true;
          };
        "hoogle" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."arrows" or (buildDepError "arrows"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."oeis" or (buildDepError "oeis"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          buildable = true;
          };
        "djinn" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."arrows" or (buildDepError "arrows"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."oeis" or (buildDepError "oeis"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          buildable = true;
          };
        "ft" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."arrows" or (buildDepError "arrows"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."oeis" or (buildDepError "oeis"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          buildable = true;
          };
        "runplugs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."arrows" or (buildDepError "arrows"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."oeis" or (buildDepError "oeis"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          buildable = true;
          };
        "quickcheck" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."arrows" or (buildDepError "arrows"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."oeis" or (buildDepError "oeis"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          buildable = true;
          };
        "smallcheck" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."readline" or (buildDepError "readline"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."arrows" or (buildDepError "arrows"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            (hsPkgs."oeis" or (buildDepError "oeis"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }