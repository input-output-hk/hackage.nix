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
      specVersion = "1.2";
      identifier = {
        name = "hs-gchart";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Deepak Jois <deepak.jois@gmail.com>";
      maintainer = "deepak.jois@gmail.com";
      author = "Deepak Jois";
      homepage = "http://github.com/deepakjois/hs-gchart";
      url = "";
      synopsis = "Haskell wrapper for the Google Chart API";
      description = "Haskell wrapper for the Google Chart API";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }