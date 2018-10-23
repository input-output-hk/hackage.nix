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
        name = "apotiki";
        version = "0.5.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "pyr@spootnik.org";
      author = "Pierre-Yves Ritschard";
      homepage = "https://github.com/pyr/apotiki";
      url = "";
      synopsis = "a faster debian repository";
      description = "apotiki generates debian repositories fast. its goal is\nto be a great companion to fpm and jenkins.\n\napotiki operates with the following features and constraints:\n\n- Supports a single debian release\n\n- Supports a single debian component\n\n- Supports an arbitrary number of architectures which need to be preprovisionned\n\n- Requires a valid PGP private key for signing";
      buildType = "Simple";
    };
    components = {
      "apotiki" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.zlib)
          (hsPkgs.tar)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.directory)
          (hsPkgs.openpgp-asciiarmor)
          (hsPkgs.openpgp-crypto-api)
          (hsPkgs.binary)
          (hsPkgs.openpgp)
          (hsPkgs.strict)
          (hsPkgs.crypto-api)
          (hsPkgs.old-time)
          (hsPkgs.scotty)
          (hsPkgs.wai-extra)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.transformers)
          (hsPkgs.wai-middleware-static)
        ];
      };
      exes = {
        "apotiki" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.zlib)
            (hsPkgs.tar)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.directory)
            (hsPkgs.openpgp-asciiarmor)
            (hsPkgs.openpgp-crypto-api)
            (hsPkgs.binary)
            (hsPkgs.openpgp)
            (hsPkgs.strict)
            (hsPkgs.crypto-api)
            (hsPkgs.old-time)
            (hsPkgs.scotty)
            (hsPkgs.wai-extra)
            (hsPkgs.text)
            (hsPkgs.http-types)
            (hsPkgs.transformers)
            (hsPkgs.transformers)
            (hsPkgs.wai-middleware-static)
          ];
        };
      };
    };
  }