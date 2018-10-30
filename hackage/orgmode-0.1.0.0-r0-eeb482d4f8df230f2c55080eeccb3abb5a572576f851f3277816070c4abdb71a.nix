{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "orgmode";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yell@lal.ly";
      author = "Lally Singh";
      homepage = "";
      url = "";
      synopsis = "Org Mode library for haskell";
      description = "A library to read and write emacs org-mode documents.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.regex-posix)
          (hsPkgs.containers)
          (hsPkgs.HStringTemplate)
          (hsPkgs.syb)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.text)
            (hsPkgs.regex-posix)
            (hsPkgs.containers)
            (hsPkgs.HStringTemplate)
            (hsPkgs.syb)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.random)
          ] ++ [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ];
        };
      };
    };
  }