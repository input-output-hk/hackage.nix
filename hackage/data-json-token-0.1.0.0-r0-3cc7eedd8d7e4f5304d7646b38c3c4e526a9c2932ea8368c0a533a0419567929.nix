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
        name = "data-json-token";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2010 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/data-json-token#readme";
      url = "";
      synopsis = "Json Token datatype";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "data-json-token-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-json-token)
          ];
        };
      };
      tests = {
        "data-json-token-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-json-token)
          ];
        };
      };
    };
  }