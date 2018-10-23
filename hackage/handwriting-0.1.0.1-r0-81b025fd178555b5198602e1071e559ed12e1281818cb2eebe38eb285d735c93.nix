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
        name = "handwriting";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Ismail Mustafa";
      maintainer = "ismailmustafa@rocketmail.com";
      author = "Ismail Mustafa";
      homepage = "http://github.com/ismailmustafa/handwriting-haskell#readme";
      url = "";
      synopsis = "API Client for the handwriting.io API.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "handwriting" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wreq)
          (hsPkgs.lens-aeson)
          (hsPkgs.lens)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.split)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "handwriting-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.handwriting)
            (hsPkgs.text)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.random)
          ];
        };
      };
      tests = {
        "handwriting-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.handwriting)
          ];
        };
      };
    };
  }