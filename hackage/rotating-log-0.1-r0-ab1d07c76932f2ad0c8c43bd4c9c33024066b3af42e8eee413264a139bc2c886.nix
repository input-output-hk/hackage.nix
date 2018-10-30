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
      specVersion = "1.8";
      identifier = {
        name = "rotating-log";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Soostone Inc";
      maintainer = "doug.beardsley@soostone.com";
      author = "Ozgun Ataman, Doug Beardsley";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Size-limited, concurrent, automatically-rotating log writer for production applications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.filepath)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "test-rotate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }