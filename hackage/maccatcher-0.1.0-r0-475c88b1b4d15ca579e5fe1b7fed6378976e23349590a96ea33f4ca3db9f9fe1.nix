{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "maccatcher";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jason.dusek@gmail.com";
      author = "Jason Dusek";
      homepage = "";
      url = "";
      synopsis = "Obtain the host MAC address on *NIX and Windows.";
      description = "Obtain the host MAC address on *NIX and Windows.";
      buildType = "Simple";
    };
    components = {
      "maccatcher" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.binary)
          (hsPkgs.process)
          (hsPkgs.parsec)
        ];
      };
      exes = { "maccatcher" = {}; };
    };
  }