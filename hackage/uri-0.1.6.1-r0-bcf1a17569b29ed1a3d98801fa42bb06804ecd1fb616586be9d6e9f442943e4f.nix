{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "uri";
        version = "0.1.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voker57@gmail.com";
      author = "Voker57";
      homepage = "http://gitorious.org/uri";
      url = "";
      synopsis = "Library for working with URIs";
      description = "Library for working with URIs, including parsing, rendering, merging, escaping";
      buildType = "Simple";
    };
    components = {
      "uri" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.safe)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }