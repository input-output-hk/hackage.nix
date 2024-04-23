{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "xhtml"; version = "3000.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert 2004-2006, Andy Gill, and the Oregon Graduate\nInstitute of Science and Technology, 1999-2001";
      maintainer = "Chris Dornan <chris@chrisdornan.com>";
      author = "Bjorn Bringert";
      homepage = "https://github.com/haskell/xhtml";
      url = "";
      synopsis = "An XHTML combinator library";
      description = "This package provides combinators for producing\nXHTML 1.0, including the Strict, Transitional and\nFrameset variants.";
      buildType = "Simple";
    };
    components = { "library" = { buildable = true; }; };
  }