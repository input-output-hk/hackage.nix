{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "hpath";
        version = "0.8.1";
      };
      license = "BSD-3-Clause";
      copyright = "Julian Ospald 2016";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Julian Ospald <hasufell@posteo.de>";
      homepage = "";
      url = "";
      synopsis = "Support for well-typed paths";
      description = "Support for well-typed paths, utilizing ByteString under the hood.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.IfElse)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.hspec)
          (hsPkgs.simple-sendfile)
          (hsPkgs.unix)
          (hsPkgs.unix-bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.word8)
        ];
      };
      tests = {
        "doctests-hpath" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.doctest)
            (hsPkgs.hpath)
          ];
        };
        "doctests-posix" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
            (hsPkgs.hpath)
            (hsPkgs.doctest)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.IfElse)
            (hsPkgs.bytestring)
            (hsPkgs.hpath)
            (hsPkgs.hspec)
            (hsPkgs.process)
            (hsPkgs.unix)
            (hsPkgs.unix-bytestring)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }