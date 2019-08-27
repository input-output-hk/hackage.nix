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
    flags = { timeout-protection = true; network-bytestring = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "warp"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Matt Brown";
      homepage = "http://github.com/snoyberg/warp";
      url = "";
      synopsis = "A fast, light-weight web server for WAI applications.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."blaze-builder-enumerator" or (buildDepError "blaze-builder-enumerator"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."enumerator" or (buildDepError "enumerator"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."sendfile" or (buildDepError "sendfile"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          ] ++ (if flags.network-bytestring
          then [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-bytestring" or (buildDepError "network-bytestring"))
            ]
          else [ (hsPkgs."network" or (buildDepError "network")) ]);
        };
      };
    }