{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "network-voicetext";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "zaneli <shun.otani@gmail.com>";
        author = "zaneli";
        homepage = "https://github.com/zaneli/network-voicetext";
        url = "";
        synopsis = "VoiceText Web API wrapper";
        description = "VoiceText Web API Haskell wrapper library.";
        buildType = "Simple";
      };
      components = {
        "network-voicetext" = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-client-tls
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.exceptions
            hsPkgs.utf8-string
            hsPkgs.resourcet
          ];
        };
      };
    }