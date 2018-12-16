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
        name = "text-icu-normalized";
        version = "0.1.5.1";
      };
      license = "GPL-3.0-only";
      copyright = "©2016 Evan Cofsky";
      maintainer = "evan@theunixman.com";
      author = "Evan Cofsky";
      homepage = "https://gitlab.com/theunixman/text-icu-normalized";
      url = "";
      synopsis = "Dealing with Strict Text in NFC normalization.";
      description = "Handle Text in NFC normalization.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.text-icu)
        ];
      };
    };
  }