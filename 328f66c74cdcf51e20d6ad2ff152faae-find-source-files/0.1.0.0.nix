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
      specVersion = "1.10";
      identifier = {
        name = "find-source-files";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2016 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/find-source-files#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Find source files at runtime using cabal";
      buildType = "Simple";
    };
    components = {
      "find-source-files" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
        ];
      };
    };
  }