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
      specVersion = "1.8";
      identifier = {
        name = "stm-sbchan";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2012";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "https://github.com/joeyadams/haskell-stm-sbchan";
      url = "";
      synopsis = "Bounded channel for STM where item sizes can vary";
      description = "This library provides a bounded first-in first-out channel type for use in\nSTM.  It supports a limit on the /total size/ of items in the channel.\n\nstm-sbchan also provides a few features not found in other bounded channel\nlibraries, such as:\n\n* Alternative overflow strategies @cramSBChan@ and @rollSBChan@.\n@cramSBChan@ ignores the channel's size limit, and @rollSBChan@\nremoves old items from the beginning of the channel when it fills up.\n\n* The channel limit can be adjusted at runtime.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.stm-tlist)
        ];
      };
    };
  }