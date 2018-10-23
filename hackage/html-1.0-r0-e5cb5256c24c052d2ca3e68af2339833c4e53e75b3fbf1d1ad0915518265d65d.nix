{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "html";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "HTML combinator library";
      description = "This package contains a combinator library for constructing\nHTML documents.";
      buildType = "Custom";
    };
    components = {
      "html" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }