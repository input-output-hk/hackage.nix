{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fingertree-tf";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Ross Paterson, Ralf Hinze, Paweł Nowak";
        maintainer = "pawel834@gmail.com";
        author = "Ross Paterson, Ralf Hinze, Paweł Nowak";
        homepage = "";
        url = "";
        synopsis = "Generic finger-tree structure using type families.";
        description = "A general sequence representation with arbitrary\nannotations, for use as a base for implementations of\nvarious collection types. This is an implementation modified\nto use associated types instead of functional dependencies.\n\nSee the original paper\n\n* Ralf Hinze and Ross Paterson,\n\\\"Finger trees: a simple general-purpose data structure\\\",\n/Journal of Functional Programming/ 16:2 (2006) pp 197-217.\n<http://www.soi.city.ac.uk/~ross/papers/FingerTree.html>\n\nFor a tuned sequence type, see @Data.Sequence@ in the\n@containers@ package, which is a specialization of\nthis structure.\n\nExamples are not available in this package. However I am\nworking on an @fingertree-extensible@ package which will use\nan idea based on types a la carte to provide composable annotations\nand that package will include examples :D";
        buildType = "Simple";
      };
      components = {
        fingertree-tf = {
          depends  = [ hsPkgs.base ];
        };
      };
    }