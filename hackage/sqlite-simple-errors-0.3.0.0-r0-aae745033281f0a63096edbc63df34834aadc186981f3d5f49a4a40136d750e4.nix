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
        name = "sqlite-simple-errors";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Joe Canero";
      maintainer = "jmc41493@gmail.com";
      author = "Joe Canero";
      homepage = "https://github.com/caneroj1/sqlite-simple-errors";
      url = "";
      synopsis = "Wrapper around errors from sqlite-simple";
      description = "Wrapper around errors from sqlite-simple";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.sqlite-simple)
          (hsPkgs.text)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "sqlite-simple-errors-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.sqlite-simple-errors)
            (hsPkgs.sqlite-simple)
            (hsPkgs.text)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }