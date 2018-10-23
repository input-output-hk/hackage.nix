{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mathista";
        version = "0.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "nuta@seiya.me";
      author = "Seiya Nuta";
      homepage = "https://github.com/nuta/mathista";
      url = "";
      synopsis = "A small programming language for numerical computing";
      description = "A small programming language for\nnumerical computing.";
      buildType = "Simple";
    };
    components = {
      "mathista" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
          (hsPkgs.regex-compat)
          (hsPkgs.MissingH)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "mathista" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.split)
            (hsPkgs.regex-compat)
            (hsPkgs.MissingH)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mathista)
            (hsPkgs.parsec)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }