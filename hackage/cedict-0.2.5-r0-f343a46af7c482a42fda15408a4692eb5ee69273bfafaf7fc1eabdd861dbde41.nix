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
        name = "cedict";
        version = "0.2.5";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jason.dusek@gmail.com";
      author = "Jason Dusek";
      homepage = "";
      url = "";
      synopsis = "Convenient Chinese phrase & character lookup.";
      description = "Convenient Chinese phrase & character lookup.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
        ];
      };
      exes = { "zi4pu3" = {}; };
    };
  }