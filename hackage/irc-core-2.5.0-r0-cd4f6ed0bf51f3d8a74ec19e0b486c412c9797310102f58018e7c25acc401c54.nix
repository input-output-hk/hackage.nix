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
        name = "irc-core";
        version = "2.5.0";
      };
      license = "ISC";
      copyright = "2016 Eric Mertens";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "https://github.com/glguy/irc-core";
      url = "";
      synopsis = "IRC core library for glirc";
      description = "IRC core library for glirc\n\nThe glirc client has been split off into <https://hackage.haskell.org/package/glirc>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.primitive)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.irc-core)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.hashable)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }