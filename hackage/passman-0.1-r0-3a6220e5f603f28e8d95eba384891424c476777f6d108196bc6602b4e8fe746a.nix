{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "passman"; version = "0.1"; };
      license = "LGPL-3.0-only";
      copyright = "(C) 2018 Jonathan Lamothe";
      maintainer = "jlamothe1980@gmail.com";
      author = "Jonathan Lamothe";
      homepage = "https://github.com/jlamothe/passman#readme";
      url = "";
      synopsis = "a simple password manager";
      description = "Please see the README on GitHub at <https://github.com/jlamothe/passman#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.SHA)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.random)
          (hsPkgs.text)
          ];
        };
      exes = {
        "passman" = {
          depends = [
            (hsPkgs.HCL)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.passman)
            (hsPkgs.random)
            (hsPkgs.transformers)
            ];
          };
        };
      tests = {
        "passman-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.passman)
            (hsPkgs.random)
            ];
          };
        };
      };
    }