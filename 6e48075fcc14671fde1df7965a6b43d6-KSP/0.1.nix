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
        name = "KSP";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "frosch03@frosch03.de";
      author = "Matthias Brettschneider";
      homepage = "https://github.com/frosch03/kerbal";
      url = "";
      synopsis = "A library with the kerbal space program universe and demo code";
      description = "This library is intended to help the haskell affine ksp player to\ncalculations within the ksp universe.";
      buildType = "Simple";
    };
    components = {
      "KSP" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }