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
      specVersion = "1.10";
      identifier = {
        name = "bighugethesaurus";
        version = "0.1.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "2015 Christopher King";
      maintainer = "G.nius.ck@gmail.com";
      author = "Christopher King";
      homepage = "";
      url = "";
      synopsis = "API wrapper for Big Huge Thesaurus";
      description = "Get synonyms, antonyms, and other kinds of related words from words.bighugelabs.com";
      buildType = "Simple";
    };
    components = {
      "bighugethesaurus" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
          (hsPkgs.HTTP)
        ];
      };
    };
  }