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
        name = "interchangeable";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "arow.okamoto@gmail.com";
      author = "Kadzuya OKAMOTO";
      homepage = "https://github.com/arowM/interchangeable";
      url = "";
      synopsis = "A type class for interchangeable data.";
      description = "Library to use class 'Interchangeable' for interchangeable data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }