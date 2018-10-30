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
        name = "LambdaDB";
        version = "0.0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Junyoung Clare Jang";
      maintainer = "jjc9310@gmail.com";
      author = "Junyoung Clare Jang";
      homepage = "https://github.com/ailrun/LambdaDB/blob/master/README.md";
      url = "";
      synopsis = "On-memory Database using Lambda Function environment.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "LambdaDB-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.LambdaDB)
          ];
        };
      };
      tests = {
        "LambdaDB-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.LambdaDB)
          ];
        };
      };
    };
  }