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
        name = "airship";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "reid@helium.com";
      author = "Reid Draper and Patrick Thomson";
      homepage = "";
      url = "";
      synopsis = "A Webmachine-inspired HTTP library";
      description = "A Webmachine-inspired HTTP library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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
          (hsPkgs.mime-types)
          (hsPkgs.monad-control)
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
        ];
      };
      exes = {
        "airship-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.airship)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
      };
      tests = {
        "unit" = {
          depends = [
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