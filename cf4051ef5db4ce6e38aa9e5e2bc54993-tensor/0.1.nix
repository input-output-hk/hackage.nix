{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tensor";
          version = "0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Nicola Squartini <tensor5@gmail.com>";
        author = "Federico Squartini, Nicola Squartini";
        homepage = "";
        url = "";
        synopsis = "A completely type-safe library for linear algebra";
        description = "\nThis library defines data types and classes for fixed dimension\nvectors and tensors. The main objects are:\n\n[@'Data.Ordinal.Ordinal'@] A totally ordered set with fixed\nsize. The @'Data.Ordinal.Ordinal'@ type @'Data.Ordinal.One'@\ncontains 1 element, @'Data.Ordinal.Succ' 'Data.Ordinal.One'@\ncontains 2 elements, @'Data.Ordinal.Succ' 'Data.Ordinal.Succ'\n'Data.Ordinal.One'@ contains 3 elements, and so on (see\n\"Data.Ordinal\" for more details). The type @'Data.Ordinal.Two'@ is\nan alias for @'Data.Ordinal.Succ' 'Data.Ordinal.One'@,\n@'Data.Ordinal.Three'@ is an alias for @'Data.Ordinal.Succ'\n'Data.Ordinal.Succ' 'Data.Ordinal.One'@, and so on.\n\n[@'Data.TypeList.MultiIndex.MultiIndex'@] The index set. It can be\nlinear, rectangular, parallelepipedal, etc. The dimensions of the\nsides are expressed using @'Data.Ordinal.Ordinal'@ types and the\ntype constructor @'Data.TypeList.MultiIndex.:|:'@,\ne.g. @('Data.Ordinal.Two' 'Data.TypeList.MultiIndex.:|:'\n('Data.Ordinal.Three' 'Data.TypeList.MultiIndex.:|:'\n'Data.TypeList.MultiIndex.Nil'))@ is a rectangular index set with 2\nrows and 3 columns. The index set also contains elements, for\nexample @('Data.Ordinal.Two' 'Data.TypeList.MultiIndex.:|:'\n('Data.Ordinal.Three' 'Data.TypeList.MultiIndex.:|:'\n'Data.TypeList.MultiIndex.Nil'))@ contains all the pairs @(i\n'Data.TypeList.MultiIndex.:|:' (j 'Data.TypeList.MultiIndex.:|:'\nNil))@ where i is in @'Data.Ordinal.Two'@ and j is in\n@'Data.Ordinal.Three'@. See \"Data.TypeList.MultiIndex\" for more\ndetails.\n\n[@'Data.Tensor.Tensor'@] It is an assignment of elements to each\nelement of its @'Data.TypeList.MultiIndex.MultiIndex'@.\n\nObjects like vectors and matrices are special cases of tensors.\nMost of the functions to manipulate tensors are grouped into type\nclasses.  This allow the possibility of having different internal\nrepresentations (backends) of a tensor, and act on these with the\nsame functions. At the moment we only provide one backend based on\n<http://hackage.haskell.org/package/vector>, which is accessible by\nimporting the module \"Data.Tensor.Vector\". More backends will be\nprovided in future releases.\n\nHere is a usage example:\n\n>>> :m Data.Ordinal Data.TypeList.MultiIndex Data.Tensor.Vector\n>>> fromList [2,3,5,1,3,6,0,5,4,2,1,3] :: Tensor (Four :|: (Three :|: Nil)) Int\n[[2,3,5],[1,3,6],[0,5,4],[2,1,3]]\n\nThe above defines a tensor with 4 rows and 3 columns (a matrix) and\n@'Int'@ coefficients. The entries of this matrix are taken from a\nlist using @'Data.Tensor.fromList'@ which is a method of the class\n@'Data.Tensor.FromList'@. Notice the output: the @'Show'@ instance\nis defined in such a way to give a readable representation as list\nof lists. The is equivalent but slightly more readable code:\n\n>>> fromList [2,3,5,1,3,6,0,5,4,2,1,3] :: Matrix Four Three Int\n[[2,3,5],[1,3,6],[0,5,4],[2,1,3]]\n\nAnalogously\n\n>>> fromList [7,3,-6] :: Tensor (Three :|: Nil) Int\n[7,3,-6]\n\nand\n\n>>> fromList [7,3,-6] :: Vector Three Int\n[7,3,-6]\n\nare the same. In order to access an entry of a\n@'Data.Tensor.Tensor'@ we use the @'Data.Tensor.!'@ operator, which\ntakes the same @'Data.TypeList.MultiIndex.MultiIndex'@ of the\n@'Data.Tensor.Tensor'@ as its second argument:\n\n>>> let a = fromList [2,3,5,1,3,6,0,5,4,2,1,3] :: Matrix Four Three Int\n>>> let b = fromList [7,3,-6] :: Vector Three Int\n>>> a ! (toMultiIndex [1,3] :: (Four :|: (Three :|: Nil)))\n5\n>>> b ! (toMultiIndex [2] :: (Three :|: Nil))\n3\n\nit returns the element at the coordinate (1,3) of the matrix @a@,\nand the element at the coordinate 2 of the vector b. In fact, thanks\nto type inference, we could simply write\n\n>>> a ! toMultiIndex [1,3]\n5\n>>> b ! toMultiIndex [2]\n2\n\nAnd now a couple of examples of algebraic operations (requires\nadding \"Data.Tensor.LinearAlgebra.Vector\" to the import list):\n\n>>> :m Data.Ordinal Data.TypeList.MultiIndex Data.Tensor.Vector Data.Tensor.LinearAlgebra.Vector\n>>> let a = fromList [2,3,5,1,3,6,0,5,4,2,1,3] :: Matrix Four Three Int\n>>> let b = fromList [7,3,-6] :: Vector Three Int\n>>> a .*. b\n[-7,-20,-9,-1]\n\nis the product of matrix @a@ and vector @b@, while\n\n>>> let c = fromList [3,4,0,-1,4,5,6,2,1] :: Matrix Three Three Int\n>>> c\n[[3,4,0],[-1,4,5],[6,2,1]]\n>>> charPoly c\n[106,13,8]\n\ngives the coefficients of the characteristic polynomial of the\nmatrix @c@.";
        buildType = "Simple";
      };
      components = {
        tensor = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
          build-tools = [ hsPkgs.ghc ];
        };
      };
    }