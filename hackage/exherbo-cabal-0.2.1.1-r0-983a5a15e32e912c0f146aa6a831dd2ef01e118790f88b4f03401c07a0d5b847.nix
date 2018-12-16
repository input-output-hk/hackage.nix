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
      specVersion = "1.10";
      identifier = {
        name = "exherbo-cabal";
        version = "0.2.1.1";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "virkony@gmail.com";
      author = "Mykola Orliuk";
      homepage = "";
      url = "";
      synopsis = "Exheres generator for cabal packages";
      description = "Generate package description from .cabal files in format\nof exheres-0 for Exherbo Linux.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.haddock-library)
          (hsPkgs.pretty)
        ];
      };
      exes = {
        "exherbo-cabal" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exherbo-cabal)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pcre-light)
          ];
        };
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }