{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      oldtypeable = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "charset";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Edward Kmett 2010-2012";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://github.com/ekmett/charset";
      url = "";
      synopsis = "Fast unicode character sets based on complemented PATRICIA tries";
      description = "Fast unicode character sets based on complemented PATRICIA tries";
      buildType = "Simple";
    };
    components = {
      "charset" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }