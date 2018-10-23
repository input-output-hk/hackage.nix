{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "HackMail";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jfredett@gmail.com";
      author = "Joe Fredette";
      homepage = "http://patch-tag.com/publicrepos/Hackmail";
      url = "http://patch-tag.com/publicrepos/Hackmail";
      synopsis = "A Procmail Replacement as Haskell EDSL";
      description = "A program for filtering/sorting email. Monadic EDSL for sorting, supports multiple mail storage formats.";
      buildType = "Simple";
    };
    components = {
      "HackMail" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.Crypto)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.hint)
        ];
      };
      exes = {
        "hackmail" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.Crypto)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.old-time)
            (hsPkgs.hdaemonize)
            (hsPkgs.hint)
          ];
        };
      };
    };
  }