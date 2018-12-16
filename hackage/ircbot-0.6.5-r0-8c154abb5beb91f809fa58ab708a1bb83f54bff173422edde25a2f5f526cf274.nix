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
        version = "0.6.5";
      };
      license = "BSD-3-Clause";
      copyright = "2012 SeeReason Partners LLC";
      maintainer = "jeremy@seereason.com";
      author = "Jeremy Shaw, Eric Mertens";
      homepage = "https://github.com/stepcut/ircbot";
      url = "";
      synopsis = "A library for writing IRC bots";
      description = "A simple library for an IRC bot";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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