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
        name = "tagging";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "overture2112@gmail.com";
      author = "Joseph Re";
      homepage = "git://github.com/jre2/HaskellTagging.git";
      url = "";
      synopsis = "Library for tagging data";
      description = "A library for tagging data according to regex rules and manipulating the\ntagged structures.";
      buildType = "Simple";
    };
    components = {
      "tagging" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.pcre-light)
        ];
      };
    };
  }