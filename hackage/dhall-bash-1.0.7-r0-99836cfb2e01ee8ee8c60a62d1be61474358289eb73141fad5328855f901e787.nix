{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "dhall-bash";
        version = "1.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Compile Dhall to Bash";
      description = "Use this package if you want to compile Dhall expressions to Bash.\nYou can use this package as a library or an executable:\n\n* See the \"Dhall.Bash\" module if you want to use this package as a library\n\n* Use the @dhall-to-bash@ if you want an executable\n\nThe \"Dhall.Bash\" module also contains instructions for how to use this\npackage";
      buildType = "Simple";
    };
    components = {
      "dhall-bash" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.dhall)
          (hsPkgs.neat-interpolation)
          (hsPkgs.shell-escape)
          (hsPkgs.text-format)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "dhall-to-bash" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.dhall)
            (hsPkgs.dhall-bash)
            (hsPkgs.optparse-generic)
            (hsPkgs.trifecta)
            (hsPkgs.text)
          ];
        };
      };
    };
  }