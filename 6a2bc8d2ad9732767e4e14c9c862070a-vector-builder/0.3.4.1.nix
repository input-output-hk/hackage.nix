{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vector-builder";
          version = "0.3.4.1";
        };
        license = "MIT";
        copyright = "(c) 2016, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/vector-builder";
        url = "";
        synopsis = "Vector builder";
        description = "An API for efficient and convenient construction of vectors.\nIt provides the composable `Builder` abstraction, which has instances of the `Monoid` and `Semigroup` classes.\n\n[Usage]\n\nFirst you use the `Builder` abstraction to specify the structure of the vector.\nThen you execute the builder to actually produce the vector.\n\n[Example]\n\nThe following code shows how you can efficiently concatenate different datastructures into a single immutable vector:\n\n>\n>import qualified Data.Vector as A\n>import qualified VectorBuilder.Builder as B\n>import qualified VectorBuilder.Vector as C\n>\n>\n>myVector :: A.Vector a -> [a] -> a -> A.Vector a\n>myVector vector list element =\n>  C.build builder\n>  where\n>    builder =\n>      B.vector vector <>\n>      foldMap B.singleton list <>\n>      B.singleton element";
        buildType = "Simple";
      };
      components = {
        vector-builder = {
          depends  = [
            hsPkgs.vector
            hsPkgs.semigroups
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.quickcheck-instances
              hsPkgs.QuickCheck
              hsPkgs.vector-builder
              hsPkgs.rebase
            ];
          };
          foldl-profiling = {
            depends  = [
              hsPkgs.vector-builder
              hsPkgs.foldl
              hsPkgs.criterion
              hsPkgs.bug
              hsPkgs.rerebase
            ];
          };
        };
        benchmarks = {
          foldl-benchmark = {
            depends  = [
              hsPkgs.vector-builder
              hsPkgs.foldl
              hsPkgs.criterion
              hsPkgs.rerebase
            ];
          };
        };
      };
    }