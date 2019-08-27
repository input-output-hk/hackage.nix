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
      identifier = { name = "warp"; version = "3.0.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Kazu Yamamoto, Matt Brown";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "A fast, light-weight web server for WAI applications.";
      description = "The premier WAI handler. For more information, see <http://steve.vinoski.net/blog/2011/05/01/warp-a-haskell-web-server/>.\n\nChangelog\n\n[3.0.0] WAI no longer uses conduit for its streaming interface.\n\n[2.1.0] The @onOpen@ and @onClose@ settings now provide the @SockAddr@ of the client, and @onOpen@ can return a @Bool@ which will close the connection. The @responseRaw@ response has been added, which provides a more elegant way to handle WebSockets than the previous @settingsIntercept@. The old settings accessors have been deprecated in favor of new setters, which will allow settings changes to be made in the future without breaking backwards compatibility.\n\n[2.0.0] ResourceT is not used anymore. Request and Response is now abstract data types. To use their constructors, Internal module should be imported.\n\n[1.3.9] Support for byte range requests.\n\n[1.3.7] Sockets now have FD_CLOEXEC set on them. This behavior is more secure, and the change should not affect the vast majority of use cases. However, it appeared that this is buggy and is fixed in 2.0.0.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."auto-update" or (buildDepError "auto-update"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."simple-sendfile" or (buildDepError "simple-sendfile"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."void" or (buildDepError "void"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.8") (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))) ++ (if flags.network-bytestring
          then [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-bytestring" or (buildDepError "network-bytestring"))
            ]
          else [
            (hsPkgs."network" or (buildDepError "network"))
            ])) ++ (pkgs.lib).optional ((system.isLinux || system.isFreebsd || system.isOsx) && flags.allow-sendfilefd) (hsPkgs."hashable" or (buildDepError "hashable"))) ++ (if system.isWindows
          then [
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            ]
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
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."auto-update" or (buildDepError "auto-update"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."simple-sendfile" or (buildDepError "simple-sendfile"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."void" or (buildDepError "void"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            (hsPkgs."async" or (buildDepError "async"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.8") (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))) ++ (pkgs.lib).optionals ((system.isLinux || system.isFreebsd || system.isOsx) && flags.allow-sendfilefd) [
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
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