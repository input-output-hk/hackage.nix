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
        name = "lambdabot-utils";
        version = "4.2.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Jan Stolarek <jan.stolarek@p.lodz.pl>";
      author = "Don Stewart et al.";
      homepage = "http://haskell.org/haskellwiki/Lambdabot";
      url = "";
      synopsis = "Utility libraries for the advanced IRC bot, Lambdabot";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nOur own custom libraries for various plugin functions.\n\nAltTime.hs: alternate version of the time library\n\nMiniHTTP.hs: a mini http server\n\nProcess.hs: a wrapper over System.Process\n\nRegex.hsc: a fast packed string regex library\n\nSerial.hs:: a serialisation API\n\nUtil.hs: miscellaneous string, and other, functions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.haskell-src)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-time)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.regex-compat)
          (hsPkgs.regex-posix)
          (hsPkgs.syb)
          (hsPkgs.tagsoup)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          (hsPkgs.zlib)
        ];
      };
    };
  }