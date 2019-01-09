{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "extractelf"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "https://github.com/Peaker/extractelf";
      url = "";
      synopsis = "Extract an ELF's metadata and sections into files";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "extractelf" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.optparse-applicative)
            (hsPkgs.elf)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-mmap)
            (hsPkgs.filepath)
            ];
          };
        };
      };
    }