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
        name = "ircbot";
        version = "0.6.4";
      };
      license = "BSD-3-Clause";
      copyright = "2012 SeeReason Partners LLC";
      maintainer = "jeremy@seereason.com";
      author = "Jeremy Shaw, Eric Mertens";
      homepage = "http://hub.darcs.net/stepcut/ircbot";
      url = "";
      synopsis = "A library for writing irc bots";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ircbot" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.irc)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.SafeSemaphore)
        ];
      };
    };
  }