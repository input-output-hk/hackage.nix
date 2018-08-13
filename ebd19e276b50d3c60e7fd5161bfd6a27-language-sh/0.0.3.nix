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
        name = "language-sh";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stephen Hicks <sdh33@cornell.edu>";
      author = "Stephen Hicks";
      homepage = "http://code.haskell.org/shsh/";
      url = "";
      synopsis = "A package for parsing shell scripts";
      description = "Language.Sh is a collection of modules for parsing and\nmanipulating expressions in shell grammar.\nThis is part of a larger project, shsh.\nPlease note that the API is somewhat unstable until we\nreach version 1.0.";
      buildType = "Simple";
    };
    components = {
      "language-sh" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pcre-light)
        ];
      };
    };
  }