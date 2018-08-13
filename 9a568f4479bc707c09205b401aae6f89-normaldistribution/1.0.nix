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
      specVersion = "0";
      identifier = {
        name = "normaldistribution";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Buckwalter 2011";
      maintainer = "bjorn.buckwalter@gmail.com";
      author = "Bjorn Buckwalter";
      homepage = "https://github.com/bjornbm/normaldistribution";
      url = "";
      synopsis = "Minimum fuss normally distributed random values.";
      description = "This purpose of this library is to have a simple API and no\ndependencies beyond Haskell 98 in order to let you produce\nnormally distributed random values with a minimum of fuss. This\nlibrary does /not/ attempt to be blazingly fast nor to pass\nstringent tests of randomness. It attempts to be very easy to\ninstall and use while being \\\"good enough\\\" for many applications\n(simulations, games, etc.). The API builds upon and is largely\nanalogous to that of the Haskell 98 @Random@ module (more\nrecently @System.Random@).\n\nPure:\n\n> (sample,g) = normal  myRandomGen  -- using a Random.RandomGen\n> samples    = normals myRandomGen  -- infinite list\n> samples2   = mkNormals 10831452   -- infinite list using a seed\n\nIn the IO monad:\n\n> sample    <- normalIO\n> samples   <- normalsIO  -- infinite list\n\nWith custom mean and standard deviation:\n\n> (sample,g) = normal'    (mean,sigma) myRandomGen\n> samples    = normals'   (mean,sigma) myRandomGen\n> samples2   = mkNormals' (mean,sigma) 10831452\n\n> sample    <- normalIO'  (mean,sigma)\n> samples   <- normalsIO' (mean,sigma)\n\nInternally the library uses the Central Limit Theorem to\napproximate normally distributed values from multiple uniformly\ndistributed random values.";
      buildType = "Simple";
    };
    components = {
      "normaldistribution" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
        ];
      };
    };
  }