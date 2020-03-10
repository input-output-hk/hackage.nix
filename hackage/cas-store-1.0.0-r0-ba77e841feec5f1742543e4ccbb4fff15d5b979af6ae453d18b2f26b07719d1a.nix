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
      identifier = { name = "cas-store"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "yves.pares@tweag.io";
      author = "Tom Nielsen, Nicholas Clarke, Andreas Herrmann";
      homepage = "https://github.com/tweag/funflow";
      url = "";
      synopsis = "A content-addressed storage";
      description = "A content-addressed storage supporting a remote caching. The API mainly consists of the cacheKleisliIO function which takes a (a -> m b) function\nand runs it only if the store doesn't already contain a result for it. Part of the funflow ecosystem.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cas-hashable" or (buildDepError "cas-hashable"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hostname" or (buildDepError "hostname"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."path" or (buildDepError "path"))
          (hsPkgs."path-io" or (buildDepError "path-io"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."sqlite-simple" or (buildDepError "sqlite-simple"))
          (hsPkgs."store" or (buildDepError "store"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unix" or (buildDepError "unix"))
          ] ++ (if system.isLinux
          then [ (hsPkgs."hinotify" or (buildDepError "hinotify")) ]
          else (pkgs.lib).optional (system.isOsx || system.isFreebsd) (hsPkgs."kqueue" or (buildDepError "kqueue")));
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."cas-hashable" or (buildDepError "cas-hashable"))
            (hsPkgs."cas-store" or (buildDepError "cas-store"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }