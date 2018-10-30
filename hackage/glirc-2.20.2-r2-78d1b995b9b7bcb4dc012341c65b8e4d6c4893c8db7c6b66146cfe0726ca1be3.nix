{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { exportcapi = true; };
    package = {
      specVersion = "1.23";
      identifier = {
        name = "glirc";
        version = "2.20.2";
      };
      license = "ISC";
      copyright = "2016 Eric Mertens";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "https://github.com/glguy/irc-core";
      url = "";
      synopsis = "Console IRC client";
      description = "Console IRC client\n\nglirc is a console IRC client with an emphasis on providing\ndynamic views into the model of your IRC connections.\n\n<https://github.com/glguy/irc-core/wiki Documentation Wiki>";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.config-value)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.gitrev)
          (hsPkgs.hashable)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.irc-core)
          (hsPkgs.lens)
          (hsPkgs.kan-extensions)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.regex-tdfa)
          (hsPkgs.socks)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vty)
          (hsPkgs.hookup)
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
            (hsPkgs.data-default-class)
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