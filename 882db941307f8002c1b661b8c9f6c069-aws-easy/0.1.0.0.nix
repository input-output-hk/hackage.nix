{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "aws-easy";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2018 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/aws-easy#readme";
      url = "";
      synopsis = "AWS Easy: Helper functions for working with amazonka";
      description = "This package provides assorted functions and some Template Haskell to simplify working the amazonka family of packages for interacting with Amazon Web Services.";
      buildType = "Simple";
    };
    components = {
      "aws-easy" = {
        depends  = [
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.resourcet)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
        ];
      };
      exes = {
        "aws-easy-app" = {
          depends  = [
            (hsPkgs.aws-easy)
            (hsPkgs.base)
          ];
        };
      };
    };
  }