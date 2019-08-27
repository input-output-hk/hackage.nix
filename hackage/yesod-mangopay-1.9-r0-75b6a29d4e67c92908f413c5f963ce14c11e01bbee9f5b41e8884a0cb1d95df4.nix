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
    flags = { dev = false; library-only = true; conduit11 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-mangopay"; version = "1.9"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Prowdsponsor";
      maintainer = "Prowdsponsor <opensource@prowdsponsor.com>";
      author = "JP Moresmau <jpmoresmau@gmail.com>";
      homepage = "https://github.com/prowdsponsor/mangopay";
      url = "";
      synopsis = "Yesod library for MangoPay API access";
      description = "This package provides convenience functions when using both\n@yesod@ and @mangopay@ packages.  It also includes a test\napplication that is built when the library-only flag is set to\n@False@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mangopay" or (buildDepError "mangopay"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."yesod" or (buildDepError "yesod"))
          (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
          (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
          ];
        };
      exes = {
        "yesod-mangopay" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."mangopay" or (buildDepError "mangopay"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."yesod-mangopay" or (buildDepError "yesod-mangopay"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."hamlet" or (buildDepError "hamlet"))
            (hsPkgs."hjsmin" or (buildDepError "hjsmin"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-postgresql" or (buildDepError "persistent-postgresql"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."shakespeare-css" or (buildDepError "shakespeare-css"))
            (hsPkgs."shakespeare-js" or (buildDepError "shakespeare-js"))
            (hsPkgs."shakespeare-text" or (buildDepError "shakespeare-text"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-logger" or (buildDepError "wai-logger"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
            (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
            (hsPkgs."yesod-persistent" or (buildDepError "yesod-persistent"))
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."country-codes" or (buildDepError "country-codes"))
            ] ++ (if flags.conduit11
            then [
              (hsPkgs."conduit" or (buildDepError "conduit"))
              (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
              ]
            else [ (hsPkgs."conduit" or (buildDepError "conduit")) ]);
          };
        };
      };
    }