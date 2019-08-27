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
      network-bytestring = false;
      allow-sendfilefd = true;
      warp-debug = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "warp"; version = "3.1.10"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Kazu Yamamoto, Matt Brown";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "A fast, light-weight web server for WAI applications.";
      description = "HTTP\\/1.0, HTTP\\/1.1 and HTTP\\/2 are supported.\nFor HTTP\\/2,  Warp supports direct and ALPN (in TLS)\nbut not upgrade.\nAPI docs and the README are available at\n<http://www.stackage.org/package/warp>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."auto-update" or (buildDepError "auto-update"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."iproute" or (buildDepError "iproute"))
          (hsPkgs."http2" or (buildDepError "http2"))
          (hsPkgs."simple-sendfile" or (buildDepError "simple-sendfile"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
          (hsPkgs."vault" or (buildDepError "vault"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."word8" or (buildDepError "word8"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ] ++ (if flags.network-bytestring
          then [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-bytestring" or (buildDepError "network-bytestring"))
            ]
          else [
            (hsPkgs."network" or (buildDepError "network"))
            ])) ++ (if system.isWindows
          then [ (hsPkgs."time" or (buildDepError "time")) ]
          else [
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."http-date" or (buildDepError "http-date"))
            ]);
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."auto-update" or (buildDepError "auto-update"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."iproute" or (buildDepError "iproute"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."simple-sendfile" or (buildDepError "simple-sendfile"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."vault" or (buildDepError "vault"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."http2" or (buildDepError "http2"))
            (hsPkgs."word8" or (buildDepError "word8"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optionals ((system.isLinux || system.isFreebsd || system.isOsx) && flags.allow-sendfilefd) [
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."http-date" or (buildDepError "http-date"))
            ];
          };
        };
      benchmarks = {
        "parser" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          };
        };
      };
    }