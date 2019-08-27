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
      identifier = { name = "keter"; version = "1.4.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Web application deployment manager, focusing on Haskell web frameworks";
      description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/keter>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."http-reverse-proxy" or (buildDepError "http-reverse-proxy"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."warp-tls" or (buildDepError "warp-tls"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
        };
      exes = {
        "keter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."keter" or (buildDepError "keter"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."keter" or (buildDepError "keter"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      };
    }