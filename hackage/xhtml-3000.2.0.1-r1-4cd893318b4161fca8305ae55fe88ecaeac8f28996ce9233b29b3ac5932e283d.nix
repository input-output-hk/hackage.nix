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
      specVersion = "0";
      identifier = {
        name = "xhtml";
        version = "3000.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert 2004-2006, Andy Gill, and the Oregon Graduate\nInstitute of Science and Technology, 1999-2001";
      maintainer = "bjorn@bringert.net";
      author = "Bjorn Bringert";
      homepage = "";
      url = "";
      synopsis = "An XHTML combinator library";
      description = "This package provides combinators for producing\nXHTML 1.0, including the Strict, Transitional and Frameset variants.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }