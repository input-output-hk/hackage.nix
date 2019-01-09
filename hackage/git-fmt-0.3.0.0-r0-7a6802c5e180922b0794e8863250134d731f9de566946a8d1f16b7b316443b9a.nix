{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "git-fmt"; version = "0.3.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.pipes)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
          ];
        };
      exes = {
        "git-fmt" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.extra)
            (hsPkgs.fast-logger)
            (hsPkgs.filepath)
            (hsPkgs.git-fmt)
            (hsPkgs.mtl)
            (hsPkgs.monad-logger)
            (hsPkgs.monad-parallel)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pipes)
            (hsPkgs.pipes-concurrency)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      };
    }