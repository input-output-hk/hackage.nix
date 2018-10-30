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
      specVersion = "1.4";
      identifier = {
        name = "gutenberg-fibonaccis";
        version = "1.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) 2011-2012, Justin Hanekom <justin.hanekom@gmail.com>";
      maintainer = "justin.hanekom@gmail.com";
      author = "Justin Hanekom";
      homepage = "";
      url = "";
      synopsis = "The first 1001 Fibonacci numbers, retrieved from the Gutenberg Project.";
      description = "Provides the first 1001 Fibonacci numbers, retrieved from the Gutenberg Project,\nalong with functions to retrieve and query these numbers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }