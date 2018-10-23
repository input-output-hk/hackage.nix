{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      mapoperad = false;
      useoldmap = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Operads";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2009 Mikael Vejdemo Johansson";
      maintainer = "mik@stanford.edu";
      author = "Mikael Vejdemo Johansson";
      homepage = "http://math.stanford.edu/~mik/operads";
      url = "http://hackage.haskell.org/packages/archive/Operads/1.0/Operads-1.0.tar.gz";
      synopsis = "Groebner basis computation for Operads.";
      description = "This is an implementation of the operadic Buchberger algorithm from Vladimir Dotsenko &\nAnton Khoroshkin: Groebner bases for operads (arXiv:0812.4069).\n\nIn writing this package, invaluable help has been given by Vladimir Dotsenko and Eric Hoffbeck.\n\nThe user is recommended to run this from within the GHC interpreter\nfor exploration, and to write small Haskell scripts for batch\nprocessing. We hope herewithin to give enough of an overview of the\navailable functionality to help the user figure out how to use the\nsoftware package.\n\nA declaration of a new variable is done in a Haskell script by a\nstatement on the form\n\n@\nvar = value\n@\n\nand in the interpreter by a statement on the form\n\n@\nlet var = value\n@\n\nUsing these, the following instructions should help get you started. I will be writing\nthe instructions aiming for use in the interpreter, for quick starts.\n\nIt is possible to force types by following a declaration by :: and the type signature\nyou'll which. This enables you, for instance, to pick a ground ring without having to set\ncoefficients explicitly - see the examples below.\n\nNote that the Buchberger algorithm in its current shape expects at least a division ring\nas scalar ring.\n\nThe expected workflow for a normal user is as follows.\n\n1. write the generators of the operadic ideal using 'corolla' and 'leaf' to construct\nbuildingblocks and 'nsCompose', 'shuffleCompose' and 'symmetricCompose' to assemble\nthem into trees. The trees, subsequently, may be assembled into tree polynomials by\n\n* picking an ordering. The orderings available are\n'PathPerm', 'RPathPerm', 'PathRPerm', 'RPathRPerm',\n'PermPath', 'RPermPath', 'PermRPath' and 'RPermRPath', distinguished by reversal\nof order for either the path comparison or the permutation comparison, as well as\nby whether path or permutation comparison takes precedence.\n\n* assembling trees and coefficients into an element of the free operad, using '+' for\naddition of operadic elements and '.*.' for scalar multiplication.\n\nUseful functions for doing this includes, furthermore:\n\n[@'oet'@] takes a tree and an ordering and gives an operad element. You will have to\nspecify the relevant type for this to work -- but we provide the extra type\n'FreeOperad' that only asks for a /LabelType/ to cover most common uses:\n\n@\noet tree :: OperadElement /LabelType/ /ScalarType/ /TreeOrdering/\n@\n\n[@'oek'@] takes a tree, an ordering and a coefficient and gives an operad element\n\n@\noek tree PathPerm (3::Rational)\n@\n\nExample:\n\n@\nlet t1 = nsCompose 1 (corolla 'a' [2,1]) (corolla 'b' [1,2])\n\nlet b = corolla 'l' [1,2]\n\nlet lb1 = shuffleCompose 1 [1,2,3] b b\n\nlet lb2 = shuffleCompose 1 [1,3,2] b b\n\nlet lb3 = shuffleCompose 2 [1,2,3] b b\n\nlet lo1 = oet lb1 :: FreeOperad Char\n\nlet lo2 = oet lb2 :: FreeOperad Char\n\nlet lo3 = oet lb3 :: FreeOperad Char\n@\n\nNote that while the Haskell compiler in general is very skilled at guessing types of objects,\nthe system guessing will give up if the type is not well defined. There are several different\nmonomial orders allowed, and they are encoded in the type system -- hence the need to annotate\nthe instantiation of elements in the free operad with appropriate types.\n\n2. assemble all generators into a list. Lists are formed by enclosing the elements,\nseparated by commas, in square brackets. Lists must have identical type on all its\nelements - hence, for instance, you cannot have operadic elements with different monomial\norderings in the same list.\n\nExample:\n\n@\nlet lgb = [lo1 - lo2 - lo3, 2.*.lo1 + 3.*. lo3]\n@\n\n3. run the algorithm on your basis and wait for it to finish. The entry point to the Buchberger\nalgorithm is, not surprisingly, 'operadicBuchberger'.\n\nExample:\n\n@\nlet grobner = operadicBuchberger lgb\n@\n\nThe output of 'operadicBuchberger', if it finishes, is a finite Gröbner basis for the ideal spanned\nby the original generators. If this is quadratic then the operad presented by this ideal is Koszul -\nthis may be tested with something like:\n\n@\nall (==2) \$ concatMap operationDegrees grobner\n@\n\nIf you wish to inspect elements yourself, the recommended way to do it is by using the 'pP' function,\nwhich outputs most of the interesting elements in a human-readable format. For objects that don't work\nwith pP, just writing the variable name on its own will print it in some format.\n\nThe difference here is related to the ability to save computational states to disk. There are two\ndifferent functions that will represent a tree or an element of an operad as a String: 'show' and 'pp'.\nUsing the former guarantees (with the same version of the source code) that the data can be read back\ninto the system and reused later one; whereas using 'pp' will build a human readable string.";
      buildType = "Simple";
    };
    components = {
      "Operads" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
    };
  }