{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "niv"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2019 Nicolas Mattia";
      maintainer = "Nicolas Mattia <nicolas@nmattia.com>";
      author = "Nicolas Mattia <nicolas@nmattia.com>";
      homepage = "https://github.com/deckgo/wai-lambda#readme";
      url = "";
      synopsis = "Easy dependency management for Nix projects";
      description = "Easy dependency management for Nix projects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.github)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.string-qq)
          (hsPkgs.tasty)
          (hsPkgs.tasty-hunit)
          (hsPkgs.text)
          (hsPkgs.unliftio)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "niv" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.github)
            (hsPkgs.hashable)
            (hsPkgs.mtl)
            (hsPkgs.niv)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.string-qq)
            (hsPkgs.text)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            ];
          };
        "niv-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.github)
            (hsPkgs.hashable)
            (hsPkgs.mtl)
            (hsPkgs.niv)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.string-qq)
            (hsPkgs.tasty)
            (hsPkgs.text)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }