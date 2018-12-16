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
      specVersion = "0";
      identifier = {
        name = "hascat-setup";
        version = "0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Florian Micheler 2010";
      maintainer = "fmi@informatik.uni-kiel.de";
      author = "Florian Micheler";
      homepage = "";
      url = "";
      synopsis = "Hascat Installation helper";
      description = "This program installs  Hascat into a given folder";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hascat-lib)
          (hsPkgs.hascat-system)
          (hsPkgs.directory)
          (hsPkgs.haskell98)
          (hsPkgs.plugins)
        ];
      };
      exes = {
        "hascat-setup" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hascat-lib)
            (hsPkgs.hascat-system)
            (hsPkgs.directory)
            (hsPkgs.haskell98)
            (hsPkgs.plugins)
          ];
        };
      };
    };
  }