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
        name = "Kriens";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matteo.provenzano@alephdue.com";
      author = "Matteo Provenzano";
      homepage = "https://github.com/matteoprovenzano/kriens-hs.git";
      url = "";
      synopsis = "Category for Continuation Passing Style";
      description = "Provides a type for Continuation Passing Style development";
      buildType = "Simple";
    };
    components = {
      "Kriens" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }