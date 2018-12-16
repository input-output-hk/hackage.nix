{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "HaLeX";
        version = "1.2.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "João Saraiva <jas@di.uminho.pt>";
      author = "João Saraiva";
      homepage = "http://www.di.uminho.pt/~jas/Research/HaLeX/HaLeX.html";
      url = "";
      synopsis = "HaLeX enables modelling, manipulation and animation of regular languages";
      description = "This library was developed in the context of a programming methodology course for\nundergraduate students, and as a consequence, it was defined mainly for educational purposes.\nIndeed, it provides a clear, efficient and concise way to define, to understand\nand to manipulate regular languages in Haskell. Furthermore, the construction\nof the complete library has been proposed as assignment projects to the students\nfollowing the course.  HaLeX is now being used to support this course.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
      exes = { "halex" = {}; };
    };
  }