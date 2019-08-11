{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "cabal-fmt"; version = "0.1"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "Format .cabal files";
      description = "Format @.cabal@ files preserving the original ordering and comments.\n\nTuned for Oleg's preference, but has some knobs still.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "cabal-fmt-internal" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            ];
          };
        };
      exes = {
        "cabal-fmt" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cabal-fmt-internal)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      tests = {
        "golden" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.cabal-fmt-internal)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            ];
          };
        };
      };
    }