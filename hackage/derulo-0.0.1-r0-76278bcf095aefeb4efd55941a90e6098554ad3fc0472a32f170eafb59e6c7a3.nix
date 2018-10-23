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
        name = "derulo";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/derulo#readme";
      url = "";
      synopsis = "Parse and render JSON simply.";
      description = "Derulo parses and renders JSON simply.";
      buildType = "Simple";
    };
    components = {
      "derulo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "derulo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.derulo)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }