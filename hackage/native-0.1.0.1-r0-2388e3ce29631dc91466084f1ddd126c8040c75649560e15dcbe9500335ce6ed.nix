{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "native"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Luka Horvat";
      maintainer = "luka.horvat9@gmail.com";
      author = "Luka Horvat";
      homepage = "";
      url = "";
      synopsis = "Native library manager for Windows";
      description = "Native library manager for Windows";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.shelly)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          ];
        };
      exes = {
        "native" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.native)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      tests = {
        "native-test" = { depends = [ (hsPkgs.base) (hsPkgs.native) ]; };
        };
      };
    }