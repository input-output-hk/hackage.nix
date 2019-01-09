{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "HaskellNet"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Robert Wills <wrwills@gmail.com>";
      author = "Jun Mukai";
      homepage = "https://patch-tag.com/r/wrwills/HaskellNet/home";
      url = "";
      synopsis = "network related libraries such as POP3, SMTP, IMAP";
      description = "Originally written for Google SOC, provides network related libraries such as POP3, SMTP, IMAP.\nAll I have done is get the project to compile using cabal and check that these libraries basically\nwork.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
          (hsPkgs.HaXml)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          ];
        };
      };
    }