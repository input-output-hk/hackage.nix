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
        name = "text-zipper";
        version = "0.8.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Jonathan Daugherty";
      maintainer = "cygnus@foobox.com";
      author = "Jonathan Daugherty <cygnus@foobox.com>";
      homepage = "https://github.com/jtdaugherty/text-zipper/";
      url = "";
      synopsis = "A text editor zipper library";
      description = "This library provides a zipper and API for editing text.";
      buildType = "Simple";
    };
    components = {
      "text-zipper" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.deepseq)
        ];
      };
    };
  }