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
      specVersion = "1.6";
      identifier = {
        name = "ircbot";
        version = "0.5.3";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.irc)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.random)
          (hsPkgs.stm)
        ];
      };
    };
  }