{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rtorrent-rpc"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "(c) Kai Lindholm, 2014";
      maintainer = "megantti@gmail.com";
      author = "Kai Lindholm";
      homepage = "https://github.com/megantti/rtorrent-rpc";
      url = "";
      synopsis = "A library for communicating with RTorrent over its XML-RPC interface.";
      description = "A library for communicating with RTorrent over its XML-RPC interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.haxr)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-textual)
          (hsPkgs.attoparsec)
          (hsPkgs.deepseq)
          (hsPkgs.split)
          (hsPkgs.utf8-string)
          ];
        };
      };
    }