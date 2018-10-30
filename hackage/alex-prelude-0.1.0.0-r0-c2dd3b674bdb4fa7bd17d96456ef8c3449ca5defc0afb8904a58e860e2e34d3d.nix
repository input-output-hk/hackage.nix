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
        name = "alex-prelude";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alex.sayers@protonmail.com";
      author = "Alex Sayers";
      homepage = "https://www.asayers.com/";
      url = "";
      synopsis = "Collection of useful functions for writing console applications";
      description = "Collection of useful functions for writing console applications";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
        ];
      };
    };
  }