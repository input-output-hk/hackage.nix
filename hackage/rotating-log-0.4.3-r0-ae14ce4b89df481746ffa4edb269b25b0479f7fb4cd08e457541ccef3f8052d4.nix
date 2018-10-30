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
        version = "0.4.3";
      };
      license = "BSD-3-Clause";
      copyright = "Soostone Inc";
      maintainer = "doug.beardsley@soostone.com";
      author = "Ozgun Ataman, Doug Beardsley";
      homepage = "http://github.com/Soostone/rotating-log";
      url = "";
      synopsis = "Size-limited, concurrent, automatically-rotating log writer.";
      description = "Size-limited, concurrent, automatically-rotating log writer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.time-locale-compat)
          (hsPkgs.filepath)
          (hsPkgs.directory)
        ];
      };
      tests = {
        "test-rotate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }