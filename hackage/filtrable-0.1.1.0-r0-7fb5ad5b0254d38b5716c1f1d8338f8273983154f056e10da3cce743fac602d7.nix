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
        name = "filtrable";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "https://github.com/strake/filtrable.hs";
      url = "";
      synopsis = "Class of filtrable containers";
      description = "";
      buildType = "Simple";
    };
    components = {
      "filtrable" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }