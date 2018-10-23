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
        name = "numericpeano";
        version = "0.2.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "janos.tapolczai@gmail.com";
      author = "Janos Tapolczai";
      homepage = "https://github.com/ombocomp/numericpeano/";
      url = "";
      synopsis = "Peano numbers with attendant bells and whistles.";
      description = "Value-level lazy Peano numbers for all your proof-theoretic\nand infinity-related needs. The features are:\n1) natural and integral numbers (N and Z);\n2) lazy infinities; and\n3) instances for all relevant typeclasses, meaning that\nPeano arithmetic can be used in generic functions without\nextra hassle.\nThe implementation is naive: a number of\nmagnitude n may consume O(n) bytes of memory.";
      buildType = "Simple";
    };
    components = {
      "numericpeano" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }