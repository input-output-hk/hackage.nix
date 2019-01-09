{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "sh2md"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "kkweon@gmail.com";
      author = "Mo Kweon";
      homepage = "https://github.com/kkweon/sh2md#readme";
      url = "";
      synopsis = "Record your shell session and print in the markdown format";
      description = "Please see the README on GitHub at <https://github.com/kkweon/sh2md#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Hclip)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          ];
        };
      exes = {
        "sh2md" = {
          depends = [
            (hsPkgs.Hclip)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.sh2md)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            ];
          };
        };
      tests = {
        "sh2md-test" = {
          depends = [
            (hsPkgs.Hclip)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.sh2md)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }