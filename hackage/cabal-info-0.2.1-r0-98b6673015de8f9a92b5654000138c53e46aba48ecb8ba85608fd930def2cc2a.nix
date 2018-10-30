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
        name = "cabal-info";
        version = "0.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/cabal-info";
      url = "";
      synopsis = "Read information from cabal files";
      description = "Have you ever needed to get information from a cabal file in a shell\nscript? Now you can! cabal-info exposes a simple command-line\ninterface to the cabal file format.\n\nThere is also a library interface, to solve tasks based on searching\nfor a .cabal file and then doing something with it.\n\nSee the <https://github.com/barrucadu/cabal-info README> for more\ndetails.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.optparse-applicative)
        ];
      };
      exes = {
        "cabal-info" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cabal-info)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }