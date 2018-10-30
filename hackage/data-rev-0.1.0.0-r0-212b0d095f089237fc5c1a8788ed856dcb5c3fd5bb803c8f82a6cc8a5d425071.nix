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
        name = "data-rev";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "https://github.com/jxv/";
      author = "Joe Vargas";
      homepage = "https://github.com/jxv/data-rev";
      url = "";
      synopsis = "A typeclass for reversing order of contents.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
    };
  }