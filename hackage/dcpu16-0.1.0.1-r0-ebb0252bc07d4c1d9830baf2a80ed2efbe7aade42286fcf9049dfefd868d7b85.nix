{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dcpu16"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Anatoly Krivolapov";
      maintainer = "example@example.com";
      author = "Anatoly Krivolapov";
      homepage = "https://github.com/githubuser/dcpu16#readme";
      url = "";
      synopsis = "DCPU-16 Emulator & Assembler";
      description = "DCPU-16 Emulator & Assembler";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.sdl2)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.spool)
          ];
        };
      exes = {
        "dcpu16-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dcpu16)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            ];
          };
        };
      tests = {
        "dcpu16-test" = { depends = [ (hsPkgs.base) (hsPkgs.dcpu16) ]; };
        };
      };
    }