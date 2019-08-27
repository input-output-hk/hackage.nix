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
    flags = { upload = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "yackage"; version = "0.7.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/yackage";
      url = "";
      synopsis = "Personal Hackage replacement for testing new packages.";
      description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/yackage>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yackage" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            ];
          };
        "yackage-upload" = {
          depends = (pkgs.lib).optionals (flags.upload) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      };
    }