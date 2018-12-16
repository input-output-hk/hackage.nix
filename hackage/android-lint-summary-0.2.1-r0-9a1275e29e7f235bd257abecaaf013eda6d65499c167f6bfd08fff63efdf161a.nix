{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      documentation = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "android-lint-summary";
        version = "0.2.1";
      };
      license = "Apache-2.0";
      copyright = "2015, Pascal Hartig";
      maintainer = "phartig@twitter.com";
      author = "Pascal Hartig";
      homepage = "https://github.com/passy/android-lint-summary";
      url = "";
      synopsis = "A pretty printer for Android Lint errors";
      description = "An easily digestible overview of errors and warnings from Android Lint.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filemanip)
          (hsPkgs.hxt)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.rainbow)
          (hsPkgs.stringable)
          (hsPkgs.terminal-size)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (flags.documentation) (hsPkgs.hscolour);
      };
      exes = {
        "android-lint-summary" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.android-lint-summary)
            (hsPkgs.basic-prelude)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filemanip)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.rainbow)
            (hsPkgs.stringable)
            (hsPkgs.terminal-size)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "hspec-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.android-lint-summary)
            (hsPkgs.basic-prelude)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.hxt)
            (hsPkgs.stringable)
          ];
        };
      };
    };
  }