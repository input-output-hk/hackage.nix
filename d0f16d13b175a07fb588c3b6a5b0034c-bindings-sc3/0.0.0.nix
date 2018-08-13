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
        name = "bindings-sc3";
        version = "0.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Stefan Kersten 2010";
      maintainer = "Stefan Kersten <sk@k-hornz.de>";
      author = "Stefan Kersten <sk@k-hornz.de>";
      homepage = "http://space.k-hornz.de/software/hsc3-process/";
      url = "";
      synopsis = "Bindings to the SuperCollider synthesis engine library.";
      description = "This library provides low level bindings to the SuperCollider synthesis engine library (@libscsynth@). If you are looking for a higher level Haskell interface, please use the hsc3-process package (<http://hackage.haskell.org/package/hsc3-process>).";
      buildType = "Simple";
    };
    components = {
      "bindings-sc3" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        libs = [ (pkgs."scsynth") ];
      };
    };
  }