{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "database-study"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://dbs.informatik.uni-halle.de/Lehre/LP09/";
      url = "";
      synopsis = "Demonstrate how a database can be implemented the functional way";
      description = "This package consists of some toy modules\nthat translate the well-known company database example.\nWe show how to implement various queries and database updates\nin a way that is both simple and clean.\nIt is recommended to download the package with @cabal fetch@,\nextract it in a local directory and run @make ghci@.\nAdditionally open a text editor and follow the examples in the @Example@ directory.\nThe first queries in the modules\n\"Example.RelationalAlgebra\" and \"Example.QueryMonad\"\nare the same but in different styles.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.containers) ] ++ (if flags.splitbase
          then [ (hsPkgs.base) ]
          else [ (hsPkgs.base) (hsPkgs.special-functors) ]);
        };
      };
    }