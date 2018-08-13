{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hsnock";
        version = "0.5.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mrdomino@gmail.com";
      author = "Steven Dee";
      homepage = "https://github.com/mrdomino/hsnock/";
      url = "";
      synopsis = "Nock 5K interpreter.";
      description = "This is an implementation of the Nock 5K spec with an accompanying\ninterpreter.\n\nNock is a tiny stateless virtual machine that can be thought of\nas a functional assembly language. Nock is the lowest layer in\nthe Urbit stack. On top of it rests the Hoon language, in which\nthe Arvo OS is written.\n\nMore on Urbit: <http://www.urbit.org/>\n\nMore on Nock: <http://www.urbit.org/2013/08/22/Chapter-2-nock.html>";
      buildType = "Simple";
    };
    components = {
      "hsnock" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.readline)
        ];
      };
      exes = {
        "hsnock" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.readline)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.parsec)
            (hsPkgs.readline)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }