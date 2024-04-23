{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "regions"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2009 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "Provides the region monad for safely opening and working with\nscarce resources.";
      description = "This package provides the region monad transformer. Scarce resources like\nfiles, memory pointers or USB devices for example can be opened in a\nregion. When the region terminates, all opened resources will be automatically\nclosed. The main advantage of regions is that the opened resources can not be\nreturned from the region which ensures no I/O with closed resources is\npossible.\n\nThe primary technique used in this package is called \\\"Lightweight monadic\nregions\\\" which was invented by Oleg Kiselyov and Chung-chieh Shan.  See:\n\n<http://okmij.org/ftp/Haskell/regions.html#light-weight>\n\nThis package provides two modules:\n\n* @Control.Monad.Trans.Region.Internal@ should only be used by library authors\nwishing to allow their users to open their type of resources in a region. It\nshould not be used by end-users directly!\n\n* @Control.Monad.Trans.Region@ provides the public and safe interface to\nregions which can be used by end-users.\n\nAlso see the @regions-monadsfd@ and @regions-monadstf@ packages which provide\ninstances for the classes in the respected monads packages.\n\nFor an example of how to use this library see the @usb-safe@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
        ];
        buildable = true;
      };
    };
  }