{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "sample-frame-np";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "http://code.haskell.org/~thielema/sample-frame/core/";
      synopsis = "Orphan instances for types from sample-frame and numericprelude";
      description = "Orphan instances for types from sample-frame package\nand type classes from numeric-prelude.\n\nThis is used by packages synthesizer.";
      buildType = "Simple";
    };
    components = {
      "sample-frame-np" = {
        depends  = [
          (hsPkgs.sample-frame)
          (hsPkgs.numeric-prelude)
        ] ++ (if flags.splitbase
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.special-functors)
            (hsPkgs.base)
          ]);
      };
    };
  }