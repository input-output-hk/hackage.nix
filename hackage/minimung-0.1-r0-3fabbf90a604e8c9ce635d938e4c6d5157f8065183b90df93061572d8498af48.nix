{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "minimung"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yakov Zaytsev <yakov@yakov.cc>";
      author = "Yakov Zaytsev";
      homepage = "";
      url = "";
      synopsis = "Shows how to run grabber on Mac OS X";
      description = "This version is known to work with GHC 6.12 and Mac OS X 10.6.2.\n\nHaddock generated documentation is available from my homepage\n\nminimung is capable to do real time CIF??\n\nModules under 'Mac' are stable and good.\n\n'Minimung.hs' is a clumsy example of usage.\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "minimung" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.unix)
            (hsPkgs.GLUT)
            ];
          frameworks = [ (pkgs."QuickTime") (pkgs."Carbon") ];
          };
        };
      };
    }