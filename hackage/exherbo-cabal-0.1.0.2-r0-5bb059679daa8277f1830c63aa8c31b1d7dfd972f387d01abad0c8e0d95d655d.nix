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
        version = "0.1.0.2";
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
      exes = {
        "exherbo-cabal" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.haddock-library)
            (hsPkgs.http-client)
            (hsPkgs.pcre-light)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }