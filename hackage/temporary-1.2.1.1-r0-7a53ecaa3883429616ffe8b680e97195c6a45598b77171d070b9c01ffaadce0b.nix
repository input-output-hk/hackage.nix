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
        name = "temporary";
        version = "1.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mateusz Kowalczyk <fuuzetsu@fuuzetsu.co.uk>, Roman Cheplyaka <roma@ro-che.info>";
      author = "";
      homepage = "https://github.com/feuerbach/temporary";
      url = "";
      synopsis = "Portable temporary file and directory support";
      description = "Functions for creating temporary files and directories.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.temporary)
            (hsPkgs.filepath)
            (hsPkgs.base-compat)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    };
  }