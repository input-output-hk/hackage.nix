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
        name = "chan-split";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "http://coder.bsimmons.name/blog/2011/07/module-chan-split-released/";
      url = "";
      synopsis = "Concurrent Chans as read/write pairs. Also provides generic\nChan, Cofunctor classes.";
      description = "A wrapper around Control.Concurrent.Chan that splits a Chan\ninto a pair, one of which allows only read operations, the\nother write operations.\n\nThis makes code easier to reason about, allows us to define\nuseful instances ('Functor' and 'Cofunctor') on the chan\npairs.\n\nIn addition this package provides a module that defines a\npair of classes 'ReadableChan' and 'WritableChan' which\ndefines the basic methods any Chan type should provide.\n\nTo use standard Chans with these polymorphic functions,\nimport as follows:\n\n> import Control.Concurrent.Chan hiding (readChan,writeChan,writeList2Chan)\n> import Control.Concurrent.Chan.Class\n\nWhen used alongside standard Chans, the Split module can be\nimported qualified like:\n\n> import qualified Control.Concurrent.Chan.Split as S\n\nNote, we do not implement the deprecated unGetChan and\nisEmptyChan functions.\n\nThis module is used internally by the simple-actors package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }