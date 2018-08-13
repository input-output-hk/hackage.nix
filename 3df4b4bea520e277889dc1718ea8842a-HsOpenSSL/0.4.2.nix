{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HsOpenSSL";
        version = "0.4.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro.org>";
      author = "Adam Langley <agl at imperialviolet.org>, PHO <pho at cielonegro.org>";
      homepage = "http://ccm.sherry.jp/HsOpenSSL/";
      url = "";
      synopsis = "(Part of) OpenSSL binding for Haskell";
      description = "HsOpenSSL is a (part of) OpenSSL binding for Haskell. It can\ngenerate RSA and DSA keys, read and write PEM files, generate\nmessage digests, sign and verify messages, encrypt and decrypt\nmessages.";
      buildType = "Configure";
    };
    components = {
      "HsOpenSSL" = {
        depends  = if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.network)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.time)
          ];
      };
    };
  }