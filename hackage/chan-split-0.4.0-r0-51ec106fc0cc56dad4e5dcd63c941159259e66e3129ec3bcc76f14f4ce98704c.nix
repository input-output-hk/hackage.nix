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
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "http://coder.bsimmons.name/blog/2011/07/module-chan-split-released/";
      url = "";
      synopsis = "Concurrent Chans as read/write pairs. Also provides generic\nChan pair class.";
      description = "An implementation of concurrent channels identical to\nControl.Concurrent.Chan, except that the channel is\nrepresented as a pair, one of which allows only read\noperations, the other write operations.\n\nThis makes code easier to reason about (the types strictly\ndelegate read/write permission), suggests useful instances\n(e.g.  'Functor' and 'Contravariant' are easily defined)\non the chan pairs, and simplifies the API.\n\nFurthermore this allows messages sent to channels with no\nreaders to be trivially garbage-collected, without relying\non inlining optimizations.\n\nWe also provide a module that defines a class 'SplitChan'\nwhich defines the basic methods any pair of Chan types\nshould provide, allowing easy swapping of Chan\nimplementations.\n\nTo use standard Chans with these polymorphic functions,\nimport as follows:\n\n> import Control.Concurrent.Chan hiding (readChan,writeChan,writeList2Chan)\n> import Control.Concurrent.Chan.Class\n\nWhen used alongside standard Chans, the Split module can be\nimported qualified like:\n\n> import qualified Control.Concurrent.Chan.Split as S\n\nIts interface is mostly backwards compatible with Chan.\nNote, we do not implement the deprecated unGetChan and\nisEmptyChan functions.\n\nThis module is used internally by the \"simple-actors\" package.\n\n/CHANGES/: 0.3.0 -> 0.4.0\n\n- In\\/OutChans now implemented from scratch (after Leon P Smith's implementation)\n\n- no longer implement Functor\\/Contravariant instances; drop contravariant dependency\n\n- implement Eq and Typeable instances\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }