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
      specVersion = "1.6";
      identifier = {
        name = "syb-with-class-instances-text";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Jeremy Shaw";
      maintainer = "jeremy@seereason.org";
      author = "Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "Scrap Your Boilerplate With Class Text instance";
      description = "Provides SYB-with-class instances for Text from the text package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syb-with-class)
          (hsPkgs.text)
        ];
      };
    };
  }