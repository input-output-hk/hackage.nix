{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mustache-haskell"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "dhchoi@gmail.com";
      author = "Daniel Choi";
      homepage = "https://github.com/danchoi/mustache-haskell";
      url = "";
      synopsis = "Straight implementation of mustache templates";
      description = "Straight implementation of mustache templates";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
          (hsPkgs.pretty-show)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.scientific)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          ];
        };
      exes = {
        "mus" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.mustache-haskell)
            (hsPkgs.parsec)
            (hsPkgs.directory)
            (hsPkgs.transformers)
            (hsPkgs.pretty-show)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.scientific)
            (hsPkgs.directory)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      };
    }