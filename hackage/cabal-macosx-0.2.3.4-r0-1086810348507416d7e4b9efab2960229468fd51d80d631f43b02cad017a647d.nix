{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cabal-macosx"; version = "0.2.3.4"; };
      license = "BSD-3-Clause";
      copyright = "Eric Kow & Andy Gimblett";
      maintainer = "Daniele Francesconi <dfrancesconi12@gmail.com>";
      author = "Eric Kow <eric.kow@gmail.com> & Andy Gimblett <haskell@gimbo.org.uk>";
      homepage = "http://github.com/danfran/cabal-macosx";
      url = "";
      synopsis = "Cabal support for creating Mac OSX application bundles.";
      description = "GUI applications on Mac OSX must be run as application /bundles/;\nthese wrap an executable in a particular directory structure which\ncan also carry resources such as icons, program metadata, other\nbinaries, and copies of shared libraries.\nThis package provides Cabal support for creating such application\nbundles.\nFor more information about OSX application bundles, look for the\n/Bundle Programming Guide/ on the /Apple Developer Connection/\nwebsite, <http://developer.apple.com/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.directory)
          (hsPkgs.hscolour)
          (hsPkgs.fgl)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.containers)
          ];
        };
      exes = {
        "macosx-app" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.fgl)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.containers)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.temporary)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }