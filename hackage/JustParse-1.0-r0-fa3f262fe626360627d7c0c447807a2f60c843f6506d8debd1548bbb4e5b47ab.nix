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
        name = "JustParse";
        version = "1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "grantslatton@gmail.com";
      author = "Grant Slatton";
      homepage = "https://github.com/grantslatton/JustParse";
      url = "";
      synopsis = "A simple and comprehensive Haskell parsing library";
      description = "A simple and comprehensive Haskell parsing library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }