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
        name = "smtp-mail-ng";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aovieth@gmail.com";
      author = "Alexander Vieth";
      homepage = "https://github.com/avieth/smtp-mail-ng";
      url = "";
      synopsis = "An SMTP client EDSL";
      description = "An SMTP client EDSL";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.mime-mail)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.bytestring)
          (hsPkgs.haskeline)
          (hsPkgs.mtl)
          (hsPkgs.attoparsec)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.cryptohash)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.tls)
          (hsPkgs.x509-system)
          (hsPkgs.x509-store)
          (hsPkgs.crypto-random)
          (hsPkgs.stringsearch)
        ];
      };
    };
  }