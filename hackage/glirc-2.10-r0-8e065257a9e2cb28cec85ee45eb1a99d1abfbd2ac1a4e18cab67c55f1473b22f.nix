{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.23";
      identifier = {
        name = "glirc";
        version = "2.10";
      };
      license = "ISC";
      copyright = "2016 Eric Mertens";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "https://github.com/glguy/irc-core";
      url = "";
      synopsis = "Console IRC client";
      description = "Console IRC client";
      buildType = "Custom";
    };
    components = {
      exes = {
        "glirc2" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.config-value)
            (hsPkgs.connection)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.gitrev)
            (hsPkgs.hashable)
            (hsPkgs.irc-core)
            (hsPkgs.lens)
            (hsPkgs.network)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.time)
            (hsPkgs.tls)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vty)
            (hsPkgs.x509)
            (hsPkgs.x509-store)
            (hsPkgs.x509-system)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs)
          ];
        };
      };
    };
  }