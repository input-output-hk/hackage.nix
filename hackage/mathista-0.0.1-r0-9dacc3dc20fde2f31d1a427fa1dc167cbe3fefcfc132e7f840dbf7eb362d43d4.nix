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
        name = "mathista";
        version = "0.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "nuta@seiya.me";
      author = "Seiya Nuta";
      homepage = "https://github.com/nuta/mathista";
      url = "";
      synopsis = "A programming language for numerical computing";
      description = "Mathista is a simple programming language for\nnumerical computing especially matrix manipulations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.split)
          (hsPkgs.regex-compat)
          (hsPkgs.MissingH)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "mathista" = {
          depends = [
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.mathista)
            (hsPkgs.parsec)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }