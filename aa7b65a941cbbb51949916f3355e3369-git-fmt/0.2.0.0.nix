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
        name = "git-fmt";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "public@hjwylde.com";
      author = "Henry J. Wylde";
      homepage = "https://github.com/hjwylde/git-fmt";
      url = "";
      synopsis = "Custom git command for formatting code.";
      description = "git-fmt adds a custom command to Git that automatically formats code by using\nexternal pretty-printers.\nThe idea was taken from gofmt, just with a bit of expansion to more languages.";
      buildType = "Simple";
    };
    components = {
      "git-fmt" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.monad-logger)
          (hsPkgs.monad-parallel)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "git-fmt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.extra)
            (hsPkgs.fast-logger)
            (hsPkgs.git-fmt)
            (hsPkgs.monad-logger)
            (hsPkgs.monad-parallel)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }