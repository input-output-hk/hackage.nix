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
      identifier = { name = "sprinkles"; version = "0.3.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tobias Dammers";
      maintainer = "tdammers@gmail.com";
      author = "Author name here";
      homepage = "https://bitbucket.org/tdammers/sprinkles";
      url = "";
      synopsis = "JSON API to HTML website wrapper";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."Glob" or (buildDepError "Glob"))
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          (hsPkgs."HDBC-postgresql" or (buildDepError "HDBC-postgresql"))
          (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
          (hsPkgs."HDBC-mysql" or (buildDepError "HDBC-mysql"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."curl" or (buildDepError "curl"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."ginger" or (buildDepError "ginger"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hsyslog" or (buildDepError "hsyslog"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."memcached-binary" or (buildDepError "memcached-binary"))
          (hsPkgs."mime-types" or (buildDepError "mime-types"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."pandoc" or (buildDepError "pandoc"))
          (hsPkgs."pandoc-creole" or (buildDepError "pandoc-creole"))
          (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          (hsPkgs."regex-base" or (buildDepError "regex-base"))
          (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."system-locale" or (buildDepError "system-locale"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."wai-handler-fastcgi" or (buildDepError "wai-handler-fastcgi"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ];
        };
      exes = {
        "sprinkles" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sprinkles" or (buildDepError "sprinkles"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ];
          };
        };
      tests = {
        "sprinkles-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sprinkles" or (buildDepError "sprinkles"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."heredoc" or (buildDepError "heredoc"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            ];
          };
        };
      };
    }