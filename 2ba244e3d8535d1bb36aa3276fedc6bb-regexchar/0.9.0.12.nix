{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      threaded = true;
      llvm = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "regexchar";
        version = "0.9.0.12";
      };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010-2015 Dr. Alistair Ward";
      maintainer = "regexchar <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "A POSIX, extended regex-engine.";
      description = "Provides a POSIX, extended regex-engine, specialised from the underlying /polymorphic/ package /regexdot/, to merely process the traditional character-lists.";
      buildType = "Simple";
    };
    components = {
      "regexchar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.regexdot)
          (hsPkgs.toolshed)
        ];
      };
      exes = {
        "grecce" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.Cabal)
            (hsPkgs.parallel)
            (hsPkgs.QuickCheck)
            (hsPkgs.regex-base)
            (hsPkgs.regex-posix)
          ];
        };
      };
    };
  }