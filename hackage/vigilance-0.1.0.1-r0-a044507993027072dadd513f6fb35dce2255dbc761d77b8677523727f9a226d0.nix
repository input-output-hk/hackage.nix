{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."acid-state" or ((hsPkgs.pkgs-errors).buildDepError "acid-state"))
            (hsPkgs."classy-prelude" or ((hsPkgs.pkgs-errors).buildDepError "classy-prelude"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-store" or ((hsPkgs.pkgs-errors).buildDepError "data-store"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."entropy" or ((hsPkgs.pkgs-errors).buildDepError "entropy"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
            (hsPkgs."http-streams" or ((hsPkgs.pkgs-errors).buildDepError "http-streams"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
            (hsPkgs."interpolatedstring-perl6" or ((hsPkgs.pkgs-errors).buildDepError "interpolatedstring-perl6"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mime-mail" or ((hsPkgs.pkgs-errors).buildDepError "mime-mail"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."safecopy" or ((hsPkgs.pkgs-errors).buildDepError "safecopy"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
            (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
            (hsPkgs."yesod-platform" or ((hsPkgs.pkgs-errors).buildDepError "yesod-platform"))
            ];
          buildable = if flags.no-server then false else true;
          };
        "vigilance" = {
          depends = (pkgs.lib).optionals (!flags.no-client) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."acid-state" or ((hsPkgs.pkgs-errors).buildDepError "acid-state"))
            (hsPkgs."classy-prelude" or ((hsPkgs.pkgs-errors).buildDepError "classy-prelude"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-store" or ((hsPkgs.pkgs-errors).buildDepError "data-store"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."entropy" or ((hsPkgs.pkgs-errors).buildDepError "entropy"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
            (hsPkgs."http-streams" or ((hsPkgs.pkgs-errors).buildDepError "http-streams"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
            (hsPkgs."interpolatedstring-perl6" or ((hsPkgs.pkgs-errors).buildDepError "interpolatedstring-perl6"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mime-mail" or ((hsPkgs.pkgs-errors).buildDepError "mime-mail"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."safecopy" or ((hsPkgs.pkgs-errors).buildDepError "safecopy"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
            (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
            (hsPkgs."yesod-platform" or ((hsPkgs.pkgs-errors).buildDepError "yesod-platform"))
            ];
          buildable = if flags.no-client then false else true;
          };
        };
      tests = {
        "test-vigilance" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."acid-state" or ((hsPkgs.pkgs-errors).buildDepError "acid-state"))
            (hsPkgs."classy-prelude" or ((hsPkgs.pkgs-errors).buildDepError "classy-prelude"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-store" or ((hsPkgs.pkgs-errors).buildDepError "data-store"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."entropy" or ((hsPkgs.pkgs-errors).buildDepError "entropy"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
            (hsPkgs."http-streams" or ((hsPkgs.pkgs-errors).buildDepError "http-streams"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or ((hsPkgs.pkgs-errors).buildDepError "hspec-expectations"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."interpolatedstring-perl6" or ((hsPkgs.pkgs-errors).buildDepError "interpolatedstring-perl6"))
            (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-properties" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-properties"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."derive" or ((hsPkgs.pkgs-errors).buildDepError "derive"))
            (hsPkgs."mime-mail" or ((hsPkgs.pkgs-errors).buildDepError "mime-mail"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."safecopy" or ((hsPkgs.pkgs-errors).buildDepError "safecopy"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
            (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
            (hsPkgs."yesod-platform" or ((hsPkgs.pkgs-errors).buildDepError "yesod-platform"))
            ];
          buildable = true;
          };
        };
      };
    }