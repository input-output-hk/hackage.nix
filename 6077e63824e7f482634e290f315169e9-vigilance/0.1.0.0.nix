{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      no-server = false;
      no-client = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "vigilance";
        version = "0.1.0.0";
      };
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
          depends  = pkgs.lib.optionals (!_flags.no-server) [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.acid-state)
            (hsPkgs.classy-prelude)
            (hsPkgs.configurator)
            (hsPkgs.containers)
            (hsPkgs.data-store)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.entropy)
            (hsPkgs.errors)
            (hsPkgs.fast-logger)
            (hsPkgs.http-streams)
            (hsPkgs.http-types)
            (hsPkgs.io-streams)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.lens)
            (hsPkgs.mime-mail)
            (hsPkgs.monad-loops)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.safecopy)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            (hsPkgs.yesod)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-platform)
          ];
        };
        "vigilance" = {
          depends  = pkgs.lib.optionals (!_flags.no-client) [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.acid-state)
            (hsPkgs.classy-prelude)
            (hsPkgs.configurator)
            (hsPkgs.containers)
            (hsPkgs.data-store)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.entropy)
            (hsPkgs.errors)
            (hsPkgs.fast-logger)
            (hsPkgs.http-streams)
            (hsPkgs.http-types)
            (hsPkgs.io-streams)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.lens)
            (hsPkgs.mime-mail)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.safecopy)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.warp)
            (hsPkgs.yesod)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-platform)
          ];
        };
      };
      tests = {
        "test-vigilance" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.acid-state)
            (hsPkgs.classy-prelude)
            (hsPkgs.configurator)
            (hsPkgs.containers)
            (hsPkgs.data-store)
            (hsPkgs.directory)
            (hsPkgs.entropy)
            (hsPkgs.errors)
            (hsPkgs.fast-logger)
            (hsPkgs.http-streams)
            (hsPkgs.http-types)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.HUnit)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.io-streams)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-properties)
            (hsPkgs.lens)
            (hsPkgs.derive)
            (hsPkgs.mime-mail)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.safecopy)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.warp)
            (hsPkgs.yesod)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-platform)
          ];
        };
      };
    };
  }