{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "yarr-image-io";
        version = "1.3.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Dominic Steinitz <dominic@steinitz.org>";
      author = "Don Stewart, Raphael Javaux, Roman Leventov";
      homepage = "";
      url = "";
      synopsis = "Image IO for Yarr library";
      description = "@repa-devil@ package, adapted to @yarr@ library.";
      buildType = "Simple";
    };
    components = {
      "yarr-image-io" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yarr)
        ];
        libs = [ (pkgs."IL") ];
      };
    };
  }