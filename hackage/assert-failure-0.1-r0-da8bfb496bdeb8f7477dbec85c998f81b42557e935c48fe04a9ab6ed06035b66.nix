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
      specVersion = "1.10";
      identifier = {
        name = "assert-failure";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Mikolaj Konarski";
      homepage = "https://github.com/Mikolaj/assert-failure";
      url = "";
      synopsis = "Syntactic sugar improving 'assert' and 'error'";
      description = "This library contains syntactic sugar that improves\nthe usability of 'assert' and 'error'.\nThis is actually a bunch of hacks wrapping the original\n'assert' function, see inside.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.pretty-show)
        ];
      };
    };
  }