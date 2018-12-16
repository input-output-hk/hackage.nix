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
        name = "happstack-hamlet";
        version = "6.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Jeremy Shaw";
      maintainer = "jeremy@seereason.com";
      author = "Jeremy Shaw";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Support for Hamlet HTML templates in Happstack";
      description = "Happstack is a web application development framework.\nHamlet provides HTML templates which are checked for\ncorrectness at compile time. This package add support\nfor using Hamlet templates with Happstack.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.happstack-server)
          (hsPkgs.hamlet)
          (hsPkgs.text)
        ];
      };
    };
  }