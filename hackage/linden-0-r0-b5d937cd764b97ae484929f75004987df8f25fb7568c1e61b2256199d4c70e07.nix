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
      identifier = { name = "linden"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "davean 2016";
      maintainer = "davean@xkcd.com";
      author = "davean";
      homepage = "http://xkcd.com/1663/";
      url = "";
      synopsis = "Zen gardening, based on l-systems";
      description = "A system for defining and running interactive l-systems over the web.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."rosezipper" or (buildDepError "rosezipper"))
          (hsPkgs."random-fu" or (buildDepError "random-fu"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."monad-supply" or (buildDepError "monad-supply"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
          (hsPkgs."wai-cors" or (buildDepError "wai-cors"))
          (hsPkgs."delay" or (buildDepError "delay"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."SHA" or (buildDepError "SHA"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hedis" or (buildDepError "hedis"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          ];
        };
      exes = {
        "linden-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."linden" or (buildDepError "linden"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."rosezipper" or (buildDepError "rosezipper"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random-fu" or (buildDepError "random-fu"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }