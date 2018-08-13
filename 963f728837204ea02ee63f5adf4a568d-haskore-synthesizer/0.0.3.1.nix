{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
      buildexamples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "haskore-synthesizer";
        version = "0.0.3.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "";
      synopsis = "Music rendering coded in Haskell";
      description = "Use native Haskell Audio Signal Processing for Music rendering with Haskore.\nContains several example songs.";
      buildType = "Simple";
    };
    components = {
      "haskore-synthesizer" = {
        depends  = [
          (hsPkgs.synthesizer-core)
          (hsPkgs.haskore)
          (hsPkgs.numeric-prelude)
          (hsPkgs.non-negative)
          (hsPkgs.event-list)
          (hsPkgs.data-accessor)
          (hsPkgs.utility-ht)
        ] ++ (if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.random)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = { "rendersong" = {}; };
    };
  }