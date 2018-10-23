{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.23";
      identifier = {
        name = "glirc";
        version = "2.25";
      };
      license = "ISC";
      copyright = "2016,2017 Eric Mertens";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "https://github.com/glguy/irc-core";
      url = "";
      synopsis = "Console IRC client";
      description = "Console IRC client\n\nglirc is a console IRC client with an emphasis on providing\ndynamic views into the model of your IRC connections.\n\n<https://github.com/glguy/irc-core/wiki Documentation Wiki>";
      buildType = "Custom";
    };
    components = {
      "glirc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.config-schema)
          (hsPkgs.config-value)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.free)
          (hsPkgs.gitrev)
          (hsPkgs.hashable)
          (hsPkgs.hookup)
          (hsPkgs.irc-core)
          (hsPkgs.kan-extensions)
          (hsPkgs.lens)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.regex-tdfa)
          (hsPkgs.semigroupoids)
          (hsPkgs.socks)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vty)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      exes = {
        "glirc2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.glirc)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.vty)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.glirc)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }