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
        name = "unitym";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/unitym#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "unitym" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
    };
  }