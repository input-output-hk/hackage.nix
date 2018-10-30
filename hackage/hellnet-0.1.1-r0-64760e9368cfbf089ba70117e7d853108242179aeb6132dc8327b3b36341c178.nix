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
      specVersion = "1.4";
      identifier = {
        name = "hellnet";
        version = "0.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "voker57@gmail.com";
      author = "Voker57";
      homepage = "http://bitcheese.net/wiki/hellnet/hspawn";
      url = "";
      synopsis = "Simple, distributed, anonymous data sharing network.";
      description = "Hellnet is a project to create simple, distributed, anonymous data sharing network.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Crypto)
          (hsPkgs.bytestring)
          (hsPkgs.pretty)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.haskell98)
          (hsPkgs.HTTP)
          (hsPkgs.hjpath)
          (hsPkgs.hjson)
          (hsPkgs.safe)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.parsec)
          (hsPkgs.random)
          (hsPkgs.process)
          (hsPkgs.utf8-string)
          (hsPkgs.RSA)
          (hsPkgs.uri)
        ];
      };
      exes = {
        "hell-insert" = {
          depends  = [ (hsPkgs.base) ];
        };
        "hell-get" = {
          depends  = [
            (hsPkgs.regex-posix)
          ];
        };
        "hell-meta" = {};
        "hell-nodes" = {
          depends  = [ (hsPkgs.base) ];
        };
        "hell-fsck" = {
          depends  = [ (hsPkgs.base) ];
        };
        "hell-serve" = {
          depends  = [
            (hsPkgs.Lucu)
            (hsPkgs.network)
            (hsPkgs.mtl)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }