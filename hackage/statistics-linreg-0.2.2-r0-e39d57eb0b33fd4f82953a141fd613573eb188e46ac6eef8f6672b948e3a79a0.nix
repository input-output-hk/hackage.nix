{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "statistics-linreg";
        version = "0.2.2";
      };
      license = "MIT";
      copyright = "2010-2012 Alp Mestanogullari";
      maintainer = "Alp Mestanogullari <alpmestan@gmail.com>";
      author = "Alp Mestanogullari <alpmestan@gmail.com>, Uri Barenholz";
      homepage = "http://github.com/alpmestan/statistics-linreg";
      url = "";
      synopsis = "Linear regression between two samples, based on the 'statistics' package.";
      description = "Provides functions to perform a linear regression between 2 samples, see the documentation of the linearRegression functions. This library is based on the 'statistics' package.\n\n* 0.2.2: added the Total-Least-Squares version and made some refactoring to eliminate code duplication\n\n* 0.2.1: added the r-squared version and improved the performances.\n\nCode sample:\n\n> import qualified Data.Vector.Unboxed as U\n>\n> test :: Int -> IO ()\n> test k = do\n>   let n = 10000000\n>   let a = k*n + 1\n>   let b = (k+1)*n\n>   let xs = U.fromList [a..b]\n>   let ys = U.map (\\x -> x*100 + 2000) xs\n>   -- thus 100 and 2000 are the alpha and beta we want\n>   putStrLn \"linearRegression:\"\n>   print \$ linearRegression xs ys\n\nThe r-squared and Total-Least-Squares versions work the same way.";
      buildType = "Simple";
    };
    components = {
      "statistics-linreg" = {
        depends  = [
          (hsPkgs.statistics)
          (hsPkgs.vector)
          (hsPkgs.base)
        ];
      };
    };
  }