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
      identifier = { name = "magicbane"; version = "0.1.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2017 Greg V <greg@unrelenting.technology>";
      maintainer = "greg@unrelenting.technology";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/magicbane#readme";
      url = "";
      synopsis = "A web framework that integrates Servant, ClassyPrelude, EKG, fast-logger, wai-cli…";
      description = "Inspired by Dropwizard, Magicbane provides a packaged framework for developing web services using the best available libraries, including Servant, ClassyPrelude, Aeson, EKG/monad-metrics, fast-logger/monad-logger, wai-cli and others.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."refined" or (buildDepError "refined"))
          (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."monad-metrics" or (buildDepError "monad-metrics"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."ekg-core" or (buildDepError "ekg-core"))
          (hsPkgs."ekg-wai" or (buildDepError "ekg-wai"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."data-has" or (buildDepError "data-has"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-qq" or (buildDepError "aeson-qq"))
          (hsPkgs."raw-strings-qq" or (buildDepError "raw-strings-qq"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-middleware-metrics" or (buildDepError "wai-middleware-metrics"))
          (hsPkgs."wai-cli" or (buildDepError "wai-cli"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-server" or (buildDepError "servant-server"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-link-header" or (buildDepError "http-link-header"))
          (hsPkgs."http-date" or (buildDepError "http-date"))
          (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
          (hsPkgs."mime-types" or (buildDepError "mime-types"))
          (hsPkgs."envy" or (buildDepError "envy"))
          ];
        };
      };
    }