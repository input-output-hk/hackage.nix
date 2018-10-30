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
      specVersion = "1.8";
      identifier = {
        name = "LambdaNet";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "2014";
      maintainer = "Joseph Barrow <jdb7hw@virginia.edu>";
      author = "Brent Baumgartner, Alex Thomas, Harang Ju, Joseph Barrow";
      homepage = "";
      url = "";
      synopsis = "A configurable and extensible neural network library";
      description = "LambdaNet is an artificial neural network library that allows\nusers to compose their own networks from function primitives.\n\nDocumentation and nightly builds for LambdaNet can be found\nat (<http://github.com/jbarrow/LambdaNet>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hmatrix)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
          (hsPkgs.split)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
        ];
      };
    };
  }