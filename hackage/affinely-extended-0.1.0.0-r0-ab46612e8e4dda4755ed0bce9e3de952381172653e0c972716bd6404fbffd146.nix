{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "affinely-extended";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Clinton Mead (2017)";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "https://github.com/clintonmead/affinely-extended";
      url = "";
      synopsis = "";
      description = "A simply way to extend numerical types to add infinity.\n\nIncludes 4 data types:\n\n1. Both infinities: GADT\n\n2. Positive infinity only: GADT\n\n3. Both infinities, represented as upper and lower bound of type (well almost)\n\n4. Positive infinity only, represented as upper bound of type\n\nThere's also rewrite rules in an attempt to make this all work as efficiently as possible (although unbenchmarked and untested).\n";
      buildType = "Simple";
    };
    components = {
      "affinely-extended" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }