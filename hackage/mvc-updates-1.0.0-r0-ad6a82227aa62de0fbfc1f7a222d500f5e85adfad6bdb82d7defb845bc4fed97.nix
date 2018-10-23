{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "mvc-updates";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Concurrent and combinable updates";
      description = "Use the @mvc-updates@ library to build programs with continously\nupdating inputs.\n\nKey features include:\n\n* @Applicative@ updates,\n\n* a tiny interface, and:\n\n* interoperation with the @mvc@ library";
      buildType = "Simple";
    };
    components = {
      "mvc-updates" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.foldl)
          (hsPkgs.mvc)
          (hsPkgs.transformers)
        ];
      };
    };
  }