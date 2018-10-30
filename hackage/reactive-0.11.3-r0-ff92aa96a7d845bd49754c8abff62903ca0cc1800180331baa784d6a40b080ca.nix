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
        version = "0.11.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2007-2009 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/reactive";
      url = "http://code.haskell.org/reactive";
      synopsis = "Push-pull functional reactive programming";
      description = "/Reactive/ is a simple foundation for programming reactive systems\nfunctionally.  Like Fran\\/FRP, it has a notions of (reactive) behaviors and\nevents.  Unlike most previous FRP implementations, Reactive has a hybrid\ndemand/data-driven implementation, as described in the paper \\\"Push-pull\nfunctional reactive programming\\\", <http://conal.net/papers/push-pull-frp/>.\n\nThis version of Reactive has some serious bugs that show up particularly\nwith some uses of the Event monad.  Some problems have been due to bugs\nin the GHC run-time support for concurrency.  I do not know whether the\nremaining problems in Reactive are still more subtle RTS issues, or\nsome subtle laziness bugs in Reactive.  Help probing the remaining\ndifficulties is most welcome.\n\nImport \"FRP.Reactive\" for FRP client apps.  To make a Reactive adapter for an\nimperative library, import \"FRP.Reactive.LegacyAdapters\".\n\nPlease see the project wiki page: <http://haskell.org/haskellwiki/reactive>\n\n&#169; 2007-2009 by Conal Elliott; GNU AGPLv3 license (see COPYING).\nI am not thrilled with GPL.\nIf you would like different terms, please talk to me.\n\nWith contributions from: Robin Green, Thomas Davie, Luke Palmer,\nDavid Sankel, Jules Bean, Creighton Hogg, Chuan-kai Lin, and Richard\nSmith.  Please let me know if I've forgotten to list you.";
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
          (hsPkgs.category-extras)
          (hsPkgs.Stream)
        ];
      };
    };
  }