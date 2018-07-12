{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "lambdabot-utils";
          version = "4.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Cale Gibbard <cgibbard@gmail.com>";
        author = "Don Stewart";
        homepage = "http://haskell.org/haskellwiki/Lambdabot";
        url = "";
        synopsis = "Utility libraries for the advanced IRC bot, Lambdabot";
        description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nOur own custom libraries for various plugin functions.\n\nAltTime.hs: alternate version of the time library\n\nMiniHTTP.hs: a mini http server\n\nProcess.hs: a wrapper over System.Process\n\nRegex.hsc: a fast packed string regex library\n\nSerial.hs:: a serialisation API\n\nUtil.hs: miscellaneous string, and other, functions";
        buildType = "Simple";
      };
      components = {
        "lambdabot-utils" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src
            hsPkgs.containers
            hsPkgs.zlib
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.regex-compat
            hsPkgs.regex-posix
            hsPkgs.process
            hsPkgs.network
            hsPkgs.old-time
            hsPkgs.binary
            hsPkgs.unix
            hsPkgs.random
            hsPkgs.tagsoup
            hsPkgs.utf8-string
          ];
        };
      };
    }