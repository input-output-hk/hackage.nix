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
      specVersion = "1.2";
      identifier = {
        name = "pcre-less";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sreservoir@gmail.com";
      author = "sreservoir";
      homepage = "~";
      url = "";
      synopsis = "Nicer interface to pcre-light.";
      description = "You'll have to read the comments until I get around to writing docs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pcre-light)
          (hsPkgs.bytestring)
        ];
      };
    };
  }