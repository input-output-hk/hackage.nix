{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pointfree"; version = "1.1.1.5"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ben Millwood <thebenmachine+git@gmail.com>";
      author = "Thomas Jäger";
      homepage = "";
      url = "";
      synopsis = "Tool for refactoring expressions into pointfree form";
      description = "The pointfree tool is a standalone command-line version of the pl\nplugin for lambdabot.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "pointfree" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.transformers)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }