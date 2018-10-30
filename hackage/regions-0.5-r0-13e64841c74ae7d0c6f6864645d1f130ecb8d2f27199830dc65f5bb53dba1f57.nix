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
      specVersion = "1.6";
      identifier = {
        name = "regions";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "Provides the region monad for safely opening and working with\nscarce resources.";
      description = "This package provides the region monad transformer. Scarce resources like\nfiles, memory pointers or USB devices for example can be opened in a\nregion. When the region terminates, all opened resources will be automatically\nclosed. The main advantage of regions is that the opened resources can not be\nreturned from the region which ensures no I/O with closed resources is\npossible.\n\nThe primary technique used in this package is called \\\"Lightweight monadic\nregions\\\" which was invented by Oleg Kiselyov and Chung-chieh Shan.  See:\n\n<http://okmij.org/ftp/Haskell/regions.html#light-weight>\n\nAlso see the @regions-monadsfd@ and @regions-monadstf@ packages which provide\ninstances for the classes in the respected monads packages.\n\nFor an example on how to use this library see the @safer-file-handles@,\n@usb-safe@ or @regional-pointers@ packages.\n\nNote that if you want to open /your/ type of scarce resource in a region, the\nonly thing you have to do is define an instance for the @Resource@ class\n(which you can find in: @Control.Resource@).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.transformers)
          (hsPkgs.MonadCatchIO-transformers)
        ];
      };
    };
  }