{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      threaded = true;
      llvm = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "regexchar";
        version = "0.9.0.7";
      };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010 Dr. Alistair Ward";
      maintainer = "regexchar <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "A POSIX extended regular-expression engine.";
      description = "Provides a POSIX, extended regex-engine, specialised from the underlying polymorphic engine /regexdot/, to merely process character-lists, as is typically required.";
      buildType = "Simple";
    };
    components = {
      "regexchar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.haskell98)
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
            (hsPkgs.QuickCheck)
            (hsPkgs.regex-base)
            (hsPkgs.regex-posix)
          ] ++ [ (hsPkgs.parallel) ];
        };
      };
    };
  }