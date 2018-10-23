{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "HaskellNet";
        version = "0.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Robert Wills <wrwills@gmail.com>";
      author = "Jun Mukai";
      homepage = "https://patch-tag.com/r/wrwills/HaskellNet";
      url = "";
      synopsis = "network related libraries such as POP3, SMTP, IMAP";
      description = "Originally written for Google SOC, provides network related libraries such as POP3, SMTP, IMAP.\nAll I have done is get the project to compile using cabal, check that these libraries basically\nwork, and add some examples";
      buildType = "Simple";
    };
    components = {
      "HaskellNet" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.pretty)
          (hsPkgs.array)
          (hsPkgs.Crypto)
          (hsPkgs.base64-string)
          (hsPkgs.containers)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.mime-mail)
          (hsPkgs.text)
        ];
      };
    };
  }