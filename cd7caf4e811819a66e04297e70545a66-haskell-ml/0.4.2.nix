{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-ml";
          version = "0.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "2018 David Banas";
        maintainer = "capn.freako@gmail.com";
        author = "David Banas";
        homepage = "";
        url = "";
        synopsis = "Machine learning in Haskell";
        description = "Provides a very simple implementation of deep (i.e. - multi-layer),\nfully connected (i.e. - _not_ convolutional) neural networks. Hides the type of the\ninternal network structure from the client code, while still providing type safety,\nvia existential type quantification and dependently typed programming techniques,\nala Justin Le. (See [Justin's blog post](https://blog.jle.im/entry/practical-dependent-types-in-haskell-2.html).)\n\nThe API offers a single network creation function: `randNet`, which allows the user\nto create a randomly initialized network of arbitrary internal structure by supplying\na list of integers, each specifying the output width of one hidden layer in the network.\n(The input/output widths are determined automatically by the compiler, via type inference.)\nThe type of the internal structure (i.e. - hidden layers) is existentially hidden, outside\nthe API, which offers the following benefits:\n\n- Client generated networks of different internal structure may be stored in a common list\n(or, other Functorial data structure).\n\n- The exact structure of the network may be specified at run time, via: user input, file I/O, etc.,\nwhile still providing GHC enforced type safety, at compile time.\n\n- Complex networks with long training times may be stored, after being trained, so that they\nmay be recalled and used again, at a later date/time, without having to re-train them.";
        buildType = "Simple";
      };
      components = {
        "haskell-ml" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.binary
            hsPkgs.hmatrix
            hsPkgs.MonadRandom
            hsPkgs.singletons
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        exes = {
          "iris" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-ml
              hsPkgs.hmatrix
              hsPkgs.random-shuffle
            ];
          };
        };
        tests = {
          "fcnTest1" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-ml
              hsPkgs.MonadRandom
            ];
          };
        };
      };
    }