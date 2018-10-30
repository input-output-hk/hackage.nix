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
      specVersion = "1.10";
      identifier = {
        name = "funcons-lambda-cbv-mp";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ltvanbinsbergen@acm.org";
      author = "L. Thomas van Binsbergen";
      homepage = "";
      url = "";
      synopsis = "call-by-value lambda-calculus with meta-programming";
      description = "Basic call-by-value lambda-calculus with operational semantics based on Funcons and meta-programming extensions";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lambda-cbv" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gll)
            (hsPkgs.funcons-tools)
            (hsPkgs.containers)
            (hsPkgs.text)
          ];
        };
      };
    };
  }