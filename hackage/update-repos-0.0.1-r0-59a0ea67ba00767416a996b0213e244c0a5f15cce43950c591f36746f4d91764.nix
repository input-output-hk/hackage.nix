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
        name = "update-repos";
        version = "0.0.1";
      };
      license = "Apache-2.0";
      copyright = "2017 Pedro Vicente Gómez Sánchez";
      maintainer = "pedrovicente.gomez@gmail.com";
      author = "Pedro Vicente Gómez Sánchez";
      homepage = "https://github.com/pedrovgs/update-repos";
      url = "";
      synopsis = "Update all your git repositories with just one command.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.split)
          (hsPkgs.monad-parallel)
        ];
      };
      exes = {
        "update-repos" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.update-repos)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.split)
            (hsPkgs.monad-parallel)
          ];
        };
      };
      tests = {
        "update-repos-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.update-repos)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }