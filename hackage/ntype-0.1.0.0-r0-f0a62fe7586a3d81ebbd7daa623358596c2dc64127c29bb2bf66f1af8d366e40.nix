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
        name = "ntype";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vladislav Zavialov <vlad.z.4096@gmail.com>";
      author = "Vladislav Zavialov";
      homepage = "";
      url = "";
      synopsis = "N-ary sum/product types";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ntype" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }