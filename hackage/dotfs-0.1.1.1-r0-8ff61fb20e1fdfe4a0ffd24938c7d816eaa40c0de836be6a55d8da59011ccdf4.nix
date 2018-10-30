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
        name = "dotfs";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul van der Walt <cabal@denknerd.org>";
      author = "Sjoerd Timmer and Paul van der Walt";
      homepage = "http://github.com/toothbrush/dotfs";
      url = "";
      synopsis = "Filesystem to manage and parse dotfiles";
      description = "A system which, when pointed to a folder full of specially\nannotated config files, will present these files tailored to\nyour current environment. Useful for making, for example, an if-block\nin your mutt-config depending on your current location, which you\ncan retrieve via some shell command.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dotfs" = {
          depends  = [
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.HFuse)
            (hsPkgs.directory)
            (hsPkgs.unix)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.process)
          ];
        };
      };
      tests = {
        "test-dotfs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.parsec)
            (hsPkgs.haskell-src)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }