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
        name = "monads-fd";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
      author = "Andy Gill";
      homepage = "";
      url = "";
      synopsis = "Monad classes, using functional dependencies";
      description = "Now that @mtl@ has been upgraded to depend on @transformers@,\nthis package is a backwards compatibility stub re-exporting the\n@mtl@ package.";
      buildType = "Simple";
    };
    components = {
      "monads-fd" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
        ];
      };
    };
  }