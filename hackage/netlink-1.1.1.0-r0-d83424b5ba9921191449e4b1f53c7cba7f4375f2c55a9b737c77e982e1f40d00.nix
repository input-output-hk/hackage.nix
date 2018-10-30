{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { generators = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "netlink";
        version = "1.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Google Inc. 2010";
      maintainer = "Markus Ongyerth <ongy@ongy.net>";
      author = "David Anderson";
      homepage = "https://github.com/Ongy/netlink-hs";
      url = "";
      synopsis = "Netlink communication for Haskell";
      description = "Library to comminicate with Linux kernel via Netlink";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.monad-loops)
          (hsPkgs.unix)
          (hsPkgs.pretty-hex)
        ];
      };
      exes = {
        "dump_nl80211" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.netlink)
          ];
        };
        "genlinfo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.netlink)
          ];
        };
        "dump_rtnetlink" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.netlink)
          ];
        };
        "Generate" = {
          depends  = pkgs.lib.optionals (flags.generators) [
            (hsPkgs.base)
            (hsPkgs.language-c)
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.regex-pcre)
          ];
        };
        "GenerateGenl" = {
          depends  = pkgs.lib.optionals (flags.generators) [
            (hsPkgs.base)
            (hsPkgs.language-c)
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.regex-pcre)
          ];
        };
        "GenerateNL80211" = {
          depends  = pkgs.lib.optionals (flags.generators) [
            (hsPkgs.base)
            (hsPkgs.language-c)
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.regex-pcre)
          ];
        };
      };
    };
  }