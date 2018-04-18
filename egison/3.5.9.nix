{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "egison";
          version = "3.5.9";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Satoshi Egi <egi@egison.org>";
        author = "Satoshi Egi, Ryo Tanaka, Takahisa Watanabe, Kentaro Honda";
        homepage = "http://www.egison.org";
        url = "";
        synopsis = "Programming language with non-linear pattern-matching against non-free data";
        description = "An interpreter for Egison, a **pattern-matching-oriented**, purely functional programming language.\nWe can directly represent pattern-matching against lists, multisets, sets, trees, graphs and any kind of data types.\n\nWe can find Egison programs in @lib@ and @sample@ directories.\nThis package also include Emacs Lisp file @elisp/egison-mode.el@.\n\nWe can do non-linear pattern-matching against non-free data types in Egison.\nAn non-free data type is a data type whose data have no canonical form, a standard way to represent that object.\nIt enables us to write elegant programs.\n\n/Twin Primes/\n\nWe can use pattern-matching for enumeration.\nThe following code enumerates all twin primes from the infinite list of prime numbers with pattern-matching!\n\n<<https://raw.githubusercontent.com/egison/egison/master/images/twin-primes-w700.png>>\n\n/Poker Hands/\n\nThe following code is the program that determines poker-hands written in Egison.\nAll hands are expressed in a single pattern.\n\n<<https://raw.githubusercontent.com/egison/egison/master/images/poker-hands-w700.png>>\n\n/Mahjong/\n\nWe can write a pattern even against mahjong tiles.\nWe modularize patterns to represent complex mahjong hands.\n\n<<https://raw.githubusercontent.com/egison/egison/master/images/mahjong-w700.png>>\n\n/Graphs/\n\nWe can pattern-match against graphs.\nWe can write program to solve the travelling salesman problem in a single pattern-matching expression.\n\n<<https://raw.githubusercontent.com/egison/egison/master/images/salesman-w700.png>>\n\nAren't thsese exciting?\nWe can run these demonstrations on our website!\nPlease view and try more demonstrations!\n\n<http://www.egison.org>\n\nEgison makes programming dramatically simple.\nPlease enjoy Egison!";
        buildType = "Simple";
      };
      components = {
        egison = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.random
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.haskeline
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.directory
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.text
            hsPkgs.regex-tdfa
            hsPkgs.process
          ];
        };
        exes = {
          egison = {
            depends  = [
              hsPkgs.egison
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.haskeline
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.directory
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.filepath
              hsPkgs.text
              hsPkgs.regex-tdfa
              hsPkgs.process
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.egison
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.Glob
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.egison
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.criterion
              hsPkgs.transformers
              hsPkgs.mtl
            ];
          };
        };
      };
    }