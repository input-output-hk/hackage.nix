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
        name = "staf";
        version = "0.1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "2016 Daniel Lovasko";
      maintainer = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      author = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      homepage = "https://github.com/lovasko/staf";
      url = "";
      synopsis = "Numerical statistics for Foldable containers";
      description = "Staf is a pure Haskell module that implements a safe\ninterface to a set of basic numerical statistics that\nonly assume the Foldable typeclass for the underlying\ncontainer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }