{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "indents";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "http://patch-tag.com/r/salazar/indents";
      url = "";
      synopsis = "indentation sensitive parser-combinators for parsec";
      description = "This library provides functions for use in parsing indentation sensitive contexts. It parses blocks of lines all indented to the same level as well as lines continued at an indented level below.";
      buildType = "Simple";
    };
    components = {
      "indents" = {
        depends  = [
          (hsPkgs.parsec)
          (hsPkgs.concatenative)
          (hsPkgs.mtl)
          (hsPkgs.base)
        ];
      };
    };
  }