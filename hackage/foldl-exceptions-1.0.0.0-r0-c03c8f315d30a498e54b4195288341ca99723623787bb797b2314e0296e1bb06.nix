{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "foldl-exceptions"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/foldl-exceptions";
      url = "";
      synopsis = "Exception handling with FoldM";
      description = "Adds support for tuning exception handling behavior when\nusing @FoldM@ from the @foldl@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.foldl) (hsPkgs.safe-exceptions) ];
        };
      tests = {
        "doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      };
    }