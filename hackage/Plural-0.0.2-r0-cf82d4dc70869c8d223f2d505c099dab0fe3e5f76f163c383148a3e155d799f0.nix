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
      specVersion = "1.6";
      identifier = {
        name = "Plural";
        version = "0.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 Andy Stewart";
      maintainer = "lazycat.manatee@gmail.com";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Pluralize English words";
      description = "Pluralize English words";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.containers)
          (hsPkgs.regex-tdfa)
          (hsPkgs.base)
        ];
      };
    };
  }