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
        name = "lambda-options";
        version = "0.4.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "thomasedingcode@gmail.com";
      author = "Thomas Eding";
      homepage = "https://github.com/thomaseding/lambda-options";
      url = "";
      synopsis = "A modern command-line parser for Haskell.";
      description = "A modern command-line parser for Haskell.";
      buildType = "Simple";
    };
    components = {
      "lambda-options" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
    };
  }