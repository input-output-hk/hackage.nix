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
    flags = { production = true; devel = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "tkyprof"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Mitsutoshi Aoe";
      maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/tkyprof";
      url = "";
      synopsis = "A web-based visualizer for GHC Profiling Reports";
      description = "A web-based visualizer for GHC Profiling Reports";
      buildType = "Simple";
      };
    components = {
      "library" = {};
      exes = {
        "tkyprof" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."attoparsec-conduit" or (buildDepError "attoparsec-conduit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hamlet" or (buildDepError "hamlet"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."rosezipper" or (buildDepError "rosezipper"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."web-routes" or (buildDepError "web-routes"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."yesod-default" or (buildDepError "yesod-default"))
            (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
            (hsPkgs."yesod-json" or (buildDepError "yesod-json"))
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            (hsPkgs."shakespeare-css" or (buildDepError "shakespeare-css"))
            (hsPkgs."shakespeare-js" or (buildDepError "shakespeare-js"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            ];
          };
        "prof2json" = {
          depends = [
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            ];
          };
        };
      };
    }