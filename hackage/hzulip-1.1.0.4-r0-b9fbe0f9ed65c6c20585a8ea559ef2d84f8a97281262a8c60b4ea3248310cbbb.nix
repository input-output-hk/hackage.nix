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
        name = "hzulip";
        version = "1.1.0.4";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.aeson)
          (hsPkgs.lens-aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "hzulip-spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.exceptions)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.lens)
            (hsPkgs.aeson)
            (hsPkgs.scotty)
            (hsPkgs.lens-aeson)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.text)
          ];
        };
      };
    };
  }