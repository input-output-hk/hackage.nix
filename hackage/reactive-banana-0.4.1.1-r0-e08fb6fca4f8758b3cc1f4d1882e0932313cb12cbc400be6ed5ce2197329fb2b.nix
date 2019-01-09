{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "reactive-banana"; version = "0.4.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "http://haskell.org/haskellwiki/Reactive-banana";
      url = "";
      synopsis = "Small but solid library for\nfunctional reactive programming (FRP).";
      description = "A small but solid library for functional reactive programming (FRP).\n\nThe current focus of this library is to implement\na subset of the semantic model for functional reactive programming\npioneered by Conal Elliott.\n\nMoreover, this library can hooked into /any/\nexisting event-based framework.\nIt is especially useful in conjunction with existing\nGUI frameworks like @wxHaskell@ or @gtk2hs@.\n\nThis also means that your code can be a mix of FRP and imperative parts.\nBored of programming imperative GUIs? Write some parts with FRP!\nDon't know how to express something with FRP?\nSwitch back to imperative style!\n\nIn the spectrum of possible FRP implementations,\nthis one features simple semantics but modest expressivity.\nPredicting space & time usage should be easy.\n\nStability forecast:\nKnown inefficiencies that will be addressed.\nNo semantic bugs expected.\nSignificant API changes are likely in future versions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.monads-tf)
          (hsPkgs.transformers)
          (hsPkgs.QuickCheck)
          ];
        };
      };
    }