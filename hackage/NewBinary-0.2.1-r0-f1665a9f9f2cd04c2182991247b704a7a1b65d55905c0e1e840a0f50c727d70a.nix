{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "NewBinary";
        version = "0.2.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A binary I/O library";
      description = "An older binary serialization library used by a number of\nprojects. For new projects consider an alternative such as 'binary'.";
      buildType = "Simple";
    };
    components = {
      "NewBinary" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.integer)
        ];
      };
    };
  }