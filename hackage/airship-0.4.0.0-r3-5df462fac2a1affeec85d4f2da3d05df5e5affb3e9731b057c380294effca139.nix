{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "airship";
        version = "0.4.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "reid@helium.com";
      author = "Reid Draper and Patrick Thomson";
      homepage = "https://github.com/helium/airship/";
      url = "";
      synopsis = "A Webmachine-inspired HTTP library";
      description = "A Webmachine-inspired HTTP library";
      buildType = "Simple";
    };
    components = {
      "airship" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-trie)
          (hsPkgs.case-insensitive)
          (hsPkgs.cryptohash)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.filepath)
          (hsPkgs.http-date)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.lifted-base)
          (hsPkgs.microlens)
          (hsPkgs.monad-control)
          (hsPkgs.mime-types)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
        ];
      };
      tests = {
        "unit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.airship)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.transformers)
            (hsPkgs.wai)
          ];
        };
      };
    };
  }