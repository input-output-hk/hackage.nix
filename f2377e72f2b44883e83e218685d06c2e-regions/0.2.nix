{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "regions";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Bas van Dijk";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk";
        homepage = "";
        url = "";
        synopsis = "Provides the region monad for safely opening and working with\nscarce resources.";
        description = "This package provides the region monad transformer. Scarce resources like\nfiles, memory pointers or USB devices for example can be opened in a\nregion. When the region terminates, all opened resources will be automatically\nclosed. The main advantage of regions is that the opened resources can not be\nreturned from the region which ensures no I/O with closed resources is\npossible.\n\nThe primary technique used in this package is called \\\"Lightweight monadic\nregions\\\" which was invented by Oleg Kiselyov and Chung-chieh Shan.  See:\n\n<http://okmij.org/ftp/Haskell/regions.html#light-weight>\n\nThis package provides two modules:\n\n* @Control.Monad.Trans.Region.Unsafe@ should only be used by library authors\nwishing to allow their users to open their type of resources in a region. It\nshould /not/ be used by end-users directly!\n\n* @Control.Monad.Trans.Region@ provides the public and safe interface to\nregions which can be used by end-users.\n\nAlso see the @regions-monadsfd@ and @regions-monadstf@ packages which provide\ninstances for the classes in the respected monads packages.\n\nFor an example of how to use this library see the @safer-file-handles@ or\n@usb-safe@ packages.";
        buildType = "Simple";
      };
      components = {
        "regions" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.transformers
            hsPkgs.MonadCatchIO-transformers
          ];
        };
      };
    }