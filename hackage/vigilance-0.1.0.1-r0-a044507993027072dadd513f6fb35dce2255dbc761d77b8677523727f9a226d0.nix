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
    flags = { no-server = false; no-client = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "vigilance"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2013 Michael Xavier";
      maintainer = "michael@michaelxavier.net";
      author = "Michael Xavier";
      homepage = "http://github.com/michaelxavier/vigilance";
      url = "";
      synopsis = "An extensible dead-man's switch system";
      description = "Vigilance is a dead man's switch (See <https://en.wikipedia.org/wiki/Dead_man%27s_switch>)\n(or vigilance switch). You define named @watches that you expect to happen\nand how long to wait inbetween before it's time to worry. You then instrument\nyour periodical tasks, whatever they are, to report to vigilance via a simple\nHTTP POST or with the included client. You can then\nconfigure notifications that will fire when a watch fails\nto check in.\nView the README on the homepage for more details.\nInstall notes:\nOn client installs where you may not want to install the\nserver component, configure like:\n\n> cabal configure -fno-server\n\nOn client installs where you may not want to install the\nclient component, configure like:\n\n> cabal configure -fno-client\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "vigilance-server" = {
          depends = (pkgs.lib).optionals (!flags.no-server) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-store" or (buildDepError "data-store"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."http-streams" or (buildDepError "http-streams"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."interpolatedstring-perl6" or (buildDepError "interpolatedstring-perl6"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."yesod-platform" or (buildDepError "yesod-platform"))
            ];
          };
        "vigilance" = {
          depends = (pkgs.lib).optionals (!flags.no-client) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-store" or (buildDepError "data-store"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."http-streams" or (buildDepError "http-streams"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."interpolatedstring-perl6" or (buildDepError "interpolatedstring-perl6"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."yesod-platform" or (buildDepError "yesod-platform"))
            ];
          };
        };
      tests = {
        "test-vigilance" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-store" or (buildDepError "data-store"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."entropy" or (buildDepError "entropy"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."http-streams" or (buildDepError "http-streams"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."interpolatedstring-perl6" or (buildDepError "interpolatedstring-perl6"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-properties" or (buildDepError "quickcheck-properties"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."derive" or (buildDepError "derive"))
            (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."yesod-platform" or (buildDepError "yesod-platform"))
            ];
          };
        };
      };
    }