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
      specVersion = "1.18";
      identifier = {
        name = "pattern-trie";
        version = "0.1.0";
      };
      license = "MPL-2.0";
      copyright = "2018 Roman S. Borschel";
      maintainer = "Roman S. Borschel <roman@pkaboo.org>";
      author = "Roman S. Borschel";
      homepage = "";
      url = "";
      synopsis = "Pattern tries";
      description = "Simple pattern tries for structured keys, where lookups\ncan capture (parts of) the input strings.";
      buildType = "Simple";
    };
    components = {
      "pattern-trie" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.pattern-trie)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.unordered-containers)
          ];
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.pattern-trie)
            (hsPkgs.text)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs.bytestring-trie);
        };
      };
    };
  }