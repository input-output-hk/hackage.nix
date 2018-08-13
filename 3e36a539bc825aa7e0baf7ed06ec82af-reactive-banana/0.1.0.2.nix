{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "reactive-banana";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "https://github.com/HeinrichApfelmus/Haskell-BlackBoard";
      url = "";
      synopsis = "Small but flexible\nfunctional reactive programming (FRP) library.";
      description = "A small but flexible library for functional reactive programming (FRP).\n\nThe main selling point of this library is that it\ncan be hooked into /any/ existing event-based framework.\nIn a sense, @reactive-banana@ is a fresh way to think\nabout callback functions.\n\nIn other words, you can freely mix FRP and imperative code.\nBored of writing imperative GUIs? Write some parts with FRP!\nDon't know how to express something with FRP?\nSwitch back to imperative style!\n\nIn the spectrum of possible FRP implementations,\nthis one features simple semantics but modest expressivity.\nPredicting space & time usage should be easy.";
      buildType = "Simple";
    };
    components = {
      "reactive-banana" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }