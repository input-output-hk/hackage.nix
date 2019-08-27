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
    flags = { dev = false; library-only = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "espial"; version = "0.0.5.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2018 Jon Schoning";
      maintainer = "jonschoning@gmail.com";
      author = "Jon Schoning";
      homepage = "https://github.com/jonschoning/espial";
      url = "";
      synopsis = "Espial is an open-source, web-based bookmarking server.";
      description = "\nEspial is an open-source, web-based bookmarking server.\n- Yesod + PureScript + sqlite3\n- multi-user (w/ privacy scopes)\n- tags, stars, editing, deleting";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bcrypt" or (buildDepError "bcrypt"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
          (hsPkgs."classy-prelude-conduit" or (buildDepError "classy-prelude-conduit"))
          (hsPkgs."classy-prelude-yesod" or (buildDepError "classy-prelude-yesod"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."ekg" or (buildDepError "ekg"))
          (hsPkgs."ekg-core" or (buildDepError "ekg-core"))
          (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."foreign-store" or (buildDepError "foreign-store"))
          (hsPkgs."hjsmin" or (buildDepError "hjsmin"))
          (hsPkgs."hscolour" or (buildDepError "hscolour"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."iso8601-time" or (buildDepError "iso8601-time"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."monad-metrics" or (buildDepError "monad-metrics"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
          (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
          (hsPkgs."pinboard" or (buildDepError "pinboard"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."wai-logger" or (buildDepError "wai-logger"))
          (hsPkgs."wai-middleware-metrics" or (buildDepError "wai-middleware-metrics"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."yesod" or (buildDepError "yesod"))
          (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
          (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
          (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
          ];
        };
      exes = {
        "espial" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bcrypt" or (buildDepError "bcrypt"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."classy-prelude-conduit" or (buildDepError "classy-prelude-conduit"))
            (hsPkgs."classy-prelude-yesod" or (buildDepError "classy-prelude-yesod"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ekg" or (buildDepError "ekg"))
            (hsPkgs."ekg-core" or (buildDepError "ekg-core"))
            (hsPkgs."espial" or (buildDepError "espial"))
            (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."foreign-store" or (buildDepError "foreign-store"))
            (hsPkgs."hjsmin" or (buildDepError "hjsmin"))
            (hsPkgs."hscolour" or (buildDepError "hscolour"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."iso8601-time" or (buildDepError "iso8601-time"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."monad-metrics" or (buildDepError "monad-metrics"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."pinboard" or (buildDepError "pinboard"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-logger" or (buildDepError "wai-logger"))
            (hsPkgs."wai-middleware-metrics" or (buildDepError "wai-middleware-metrics"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            ];
          };
        "migration" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bcrypt" or (buildDepError "bcrypt"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."classy-prelude-conduit" or (buildDepError "classy-prelude-conduit"))
            (hsPkgs."classy-prelude-yesod" or (buildDepError "classy-prelude-yesod"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ekg" or (buildDepError "ekg"))
            (hsPkgs."ekg-core" or (buildDepError "ekg-core"))
            (hsPkgs."espial" or (buildDepError "espial"))
            (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."foreign-store" or (buildDepError "foreign-store"))
            (hsPkgs."hjsmin" or (buildDepError "hjsmin"))
            (hsPkgs."hscolour" or (buildDepError "hscolour"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."iso8601-time" or (buildDepError "iso8601-time"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."monad-metrics" or (buildDepError "monad-metrics"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."pinboard" or (buildDepError "pinboard"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-logger" or (buildDepError "wai-logger"))
            (hsPkgs."wai-middleware-metrics" or (buildDepError "wai-middleware-metrics"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bcrypt" or (buildDepError "bcrypt"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."classy-prelude-conduit" or (buildDepError "classy-prelude-conduit"))
            (hsPkgs."classy-prelude-yesod" or (buildDepError "classy-prelude-yesod"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ekg" or (buildDepError "ekg"))
            (hsPkgs."ekg-core" or (buildDepError "ekg-core"))
            (hsPkgs."espial" or (buildDepError "espial"))
            (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."foreign-store" or (buildDepError "foreign-store"))
            (hsPkgs."hjsmin" or (buildDepError "hjsmin"))
            (hsPkgs."hscolour" or (buildDepError "hscolour"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."iso8601-time" or (buildDepError "iso8601-time"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."monad-metrics" or (buildDepError "monad-metrics"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."pinboard" or (buildDepError "pinboard"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-logger" or (buildDepError "wai-logger"))
            (hsPkgs."wai-middleware-metrics" or (buildDepError "wai-middleware-metrics"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-auth" or (buildDepError "yesod-auth"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            (hsPkgs."yesod-test" or (buildDepError "yesod-test"))
            ];
          };
        };
      };
    }