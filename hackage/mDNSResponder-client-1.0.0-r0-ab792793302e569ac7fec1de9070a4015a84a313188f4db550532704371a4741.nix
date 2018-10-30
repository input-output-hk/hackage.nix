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
        name = "mDNSResponder-client";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016, Obsidian Systems LLC";
      maintainer = "shea@shealevy.com";
      author = "Shea Levy";
      homepage = "https://github.com/obsidiansystems/mDNSResponder-client";
      url = "";
      synopsis = "Library for talking to the mDNSResponder daemon.";
      description = "On OS X, iOS, and Bonjour for Windows, mDNSResponder is\nthe daemon responsible for providing the Bonjour services.\nThis is a client implementation directly on top of the\n(not documented outside of the open source code) Unix\ndomain socket protocol, as the \"low level\" dns_sd C API\nprovided by Apple relies on heavy use of callbacks and\ndoes not allow for nonblocking connections.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.network-msg)
          (hsPkgs.ctrie)
          (hsPkgs.data-endian)
          (hsPkgs.transformers)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.mDNSResponder-client)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }