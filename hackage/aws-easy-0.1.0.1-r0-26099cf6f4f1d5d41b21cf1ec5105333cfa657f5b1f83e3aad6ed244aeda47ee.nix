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
        name = "aws-easy";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2018 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/aws-easy#readme";
      url = "";
      synopsis = "Helper function and types for working with amazonka";
      description = "This package provides assorted functions and some Template Haskell to simplify working the @amazonka@ family of packages for interacting with Amazon Web Services.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.amazonka)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.resourcet)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "aws-easy-demo" = {
          depends = [
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-dynamodb)
            (hsPkgs.amazonka-s3)
            (hsPkgs.aws-easy)
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }