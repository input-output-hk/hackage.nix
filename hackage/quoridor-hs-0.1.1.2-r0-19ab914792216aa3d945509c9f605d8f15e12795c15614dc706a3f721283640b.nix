{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "quoridor-hs"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tal Walter <talw10@gmail.com>";
      author = "Tal Walter <talw10@gmail.com>";
      homepage = "https://github.com/talw/quoridor-hs";
      url = "";
      synopsis = "A Quoridor implementation in Haskell";
      description = "An implementation in Haskell of the 2-to-4-player strategy game.\nFor more information, see:\n<https://github.com/talw/quoridor-hs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.dlist)
          (hsPkgs.network-simple)
          (hsPkgs.hex)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.ansi-terminal)
          (hsPkgs.process)
          (hsPkgs.websockets-snap)
          (hsPkgs.websockets)
          (hsPkgs.snap-core)
          (hsPkgs.snap-server)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.network)
          (hsPkgs.async)
          (hsPkgs.stm)
          ];
        };
      exes = {
        "quoridor-exec" = { depends = [ (hsPkgs.base) (hsPkgs.quoridor-hs) ]; };
        };
      tests = {
        "quoridor-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.quoridor-hs)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }