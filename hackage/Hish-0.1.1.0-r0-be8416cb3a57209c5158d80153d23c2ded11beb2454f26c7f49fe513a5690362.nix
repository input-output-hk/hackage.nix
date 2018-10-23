{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "Hish";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jaiyalas@gmail.com";
      author = "Yun-Yan Chi";
      homepage = "https://github.com/jaiyalas/Hish";
      url = "";
      synopsis = "";
      description = "Generating a beautiful and useful prompt.";
      buildType = "Simple";
    };
    components = {
      "Hish" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.MissingH)
          (hsPkgs.process)
          (hsPkgs.regex-tdfa)
          (hsPkgs.time)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "hish" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.MissingH)
            (hsPkgs.process)
            (hsPkgs.regex-tdfa)
            (hsPkgs.time)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }