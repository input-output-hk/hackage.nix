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
        version = "0.1.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "Pedro Tacla Yamada <tacla.yamada@gmail.com> 2014";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/haskell-zulip";
      url = "";
      synopsis = "A haskell wrapper for the Zulip API.";
      description = "This a Zulip API wrapper for Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wreq)
          (hsPkgs.lens)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "hzulip-spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wreq)
            (hsPkgs.lens)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }