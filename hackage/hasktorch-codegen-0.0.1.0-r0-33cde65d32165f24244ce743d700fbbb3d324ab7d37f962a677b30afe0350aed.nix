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
      specVersion = "2.2";
      identifier = {
        name = "hasktorch-codegen";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Code generation tools for Hasktorch";
      description = "Codegen will generate FFI code which layes the foundation for the Hasktorch library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.hashable)
          (hsPkgs.megaparsec)
          (hsPkgs.pretty-show)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "ht-codegen" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hasktorch-codegen)
            (hsPkgs.pretty-show)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hasktorch-codegen)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.megaparsec)
            (hsPkgs.pretty-show)
            (hsPkgs.text)
          ];
        };
      };
    };
  }