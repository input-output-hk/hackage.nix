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
        name = "cli";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>, Nicolas Di Prima <nicolas@di-prima.fr>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>, Nicolas Di Prima <nicolas@di-prima.fr>";
      homepage = "https://github.com/vincenthz/hs-cli";
      url = "";
      synopsis = "Command Line Interface";
      description = "All you need for interacting with users at the Console level\n\n* Display routines, formatting, progress bars\n\n* Options parsing\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.terminfo)
        ];
      };
      tests = {
        "test-cli" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.transformers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.cli)
          ];
        };
      };
    };
  }