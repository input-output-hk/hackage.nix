{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hzulip";
          version = "0.2.0.3";
        };
        license = "GPL-2.0-only";
        copyright = "Pedro Tacla Yamada <tacla.yamada@gmail.com> 2014";
        maintainer = "tacla.yamada@gmail.com";
        author = "Pedro Tacla Yamada";
        homepage = "https://github.com/yamadapc/hzulip";
        url = "";
        synopsis = "A haskell wrapper for the Zulip API.";
        description = "This a Zulip API wrapper for Haskell.";
        buildType = "Simple";
      };
      components = {
        hzulip = {
          depends  = [
            hsPkgs.base
            hsPkgs.wreq
            hsPkgs.lens
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
        tests = {
          hzulip-spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.wreq
              hsPkgs.lens
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.hspec
            ];
          };
        };
      };
    }