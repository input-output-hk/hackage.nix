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
        name = "corenlp-parser";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "k-bx@k-bx.com";
      author = "Kostiantyn Rybnikov";
      homepage = "https://github.com/k-bx/corenlp-parser#readme";
      url = "";
      synopsis = "Launches CoreNLP and parses the JSON output";
      description = "Launches CoreNLP and parses the JSON output";
      buildType = "Simple";
    };
    components = {
      "corenlp-parser" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.raw-strings-qq)
          (hsPkgs.rocksdb-haskell)
          (hsPkgs.safe-exceptions)
          (hsPkgs.split)
          (hsPkgs.store)
          (hsPkgs.string-class)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
        libs = [ (pkgs.rocksdb) ];
      };
    };
  }