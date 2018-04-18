{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "HsOpenSSL";
          version = "0.1.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <phonohawk at ps dot sakura dot ne dot jp>";
        author = "PHO <phonohawk at ps dot sakura dot ne dot jp>";
        homepage = "http://ccm.sherry.jp/HsOpenSSL/";
        url = "";
        synopsis = "(Part of) OpenSSL binding for Haskell";
        description = "HsOpenSSL is a (part of) OpenSSL binding for Haskell. It can\ngenerate RSA keys, read and write PEM files, generate message\ndigests, sign and verify messages, encrypt and decrypt\nmessages.";
        buildType = "Custom";
      };
      components = {
        HsOpenSSL = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
      };
    }