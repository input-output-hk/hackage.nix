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
        name = "lambda2js";
        version = "0.1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "208115@mail.muni.cz";
      author = "Matej Kollar <208115@mail.muni.cz>";
      homepage = "https://github.com/xkollar/lambda2js";
      url = "";
      synopsis = "Untyped Lambda calculus to JavaScript compiler";
      description = "Simple though savage untyped Lambda calculus to JavaScript compiler.\nI hope you will have same fun playing with it as I had writing it.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lambda2js" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }