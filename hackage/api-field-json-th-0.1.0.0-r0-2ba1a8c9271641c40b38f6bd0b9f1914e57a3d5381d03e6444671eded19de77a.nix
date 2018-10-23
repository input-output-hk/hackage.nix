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
        name = "api-field-json-th";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/api-field-json-th#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "api-field-json-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "api-field-json-th-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.api-field-json-th)
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }