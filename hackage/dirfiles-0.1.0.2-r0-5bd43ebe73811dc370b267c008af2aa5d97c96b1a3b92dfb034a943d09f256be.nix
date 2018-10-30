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
        name = "dirfiles";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mr.hugo.gomes@gmail.com";
      author = "HugoDaniel";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Simple datatype to represent a library with files and folders";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.safecopy)
          (hsPkgs.hblock)
        ];
      };
    };
  }