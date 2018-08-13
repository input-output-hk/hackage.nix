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
      specVersion = "1.10";
      identifier = {
        name = "preprocess-haskell";
        version = "0.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ben@benjaminsummers.net";
      author = "Benjamin Summers";
      homepage = "";
      url = "";
      synopsis = "Preprocess Haskell Repositories.";
      description = "Do all of the dirty work required to get a Haskell repo\nready for straightforward static-analysis.";
      buildType = "Simple";
    };
    components = {
      "preprocess-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.foldl)
          (hsPkgs.system-filepath)
          (hsPkgs.turtle)
          (hsPkgs.basic-prelude)
          (hsPkgs.cpphs)
          (hsPkgs.containers)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.text)
          (hsPkgs.Cabal)
          (hsPkgs.temporary)
          (hsPkgs.unix)
          (hsPkgs.deepseq)
          (hsPkgs.file-embed)
          (hsPkgs.bytestring)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.directory)
          (hsPkgs.here)
        ];
      };
    };
  }