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
      specVersion = "1.2";
      identifier = {
        name = "reactive";
        version = "0.9.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2008 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/reactive";
      url = "http://code.haskell.org/reactive";
      synopsis = "Simple foundation for functional reactive programming";
      description = "/Reactive/ is a simple foundation for programming reactive systems\nfunctionally.  Like Fran\\/FRP, it has a notions of (reactive) behaviors and\nevents.  Unlike most previous FRP implementations, Reactive has a hybrid\ndemand/data-driven implementation, as described in the paper \\\"Simply\nefficient functional reactivity\\\", <http://conal.net/papers/simply-reactive/>.\n\nImport \"FRP.Reactive\" for FRP client apps.  To make an Reactive adapter for an\nimperative library, import \"FRP.Reactive.LegacyAdapters\".\n\nPlease see the project wiki page: <http://haskell.org/haskellwiki/reactive>\n\nThe module documentation pages have links to colorized source code and\nto wiki pages where you can read and contribute user comments.  Enjoy!\n\n&#169; 2007-2008 by Conal Elliott; BSD3 license.\n\nContributions from: Thomas Davie, Luke Palmer, David Sankel.  (Please let me\nknow if I've forgotten to list you.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
          (hsPkgs.TypeCompose)
          (hsPkgs.vector-space)
          (hsPkgs.unamb)
          (hsPkgs.checkers)
        ];
      };
    };
  }