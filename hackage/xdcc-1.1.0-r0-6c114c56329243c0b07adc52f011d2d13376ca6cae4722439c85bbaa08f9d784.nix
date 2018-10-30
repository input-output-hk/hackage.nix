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
      specVersion = "1.10";
      identifier = {
        name = "xdcc";
        version = "1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "git@jangerlinger.de";
      author = "Jan Gerlinger";
      homepage = "https://github.com/JanGe/xdcc";
      url = "";
      synopsis = "A wget-like utility for retrieving files from XDCC bots on\nIRC";
      description = "XDCC (eXtended DCC) is a protocol used by IRC bots to make\nfiles available for transfer. This utility can be used to\nretrieve such files.\n\nSee <https://de.wikipedia.org/wiki/XDCC> for\nmore details.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "xdcc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ascii-progress)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.concurrent-extra)
            (hsPkgs.concurrent-output)
            (hsPkgs.errors)
            (hsPkgs.iproute)
            (hsPkgs.irc-client)
            (hsPkgs.irc-conduit)
            (hsPkgs.irc-ctcp)
            (hsPkgs.irc-dcc)
            (hsPkgs.lifted-base)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.path)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.transformers)
            (hsPkgs.safe-exceptions)
            (hsPkgs.stm)
            (hsPkgs.unix-compat)
          ];
        };
      };
    };
  }