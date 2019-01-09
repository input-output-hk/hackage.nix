{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hsbackup"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@mornfall.net";
      author = "Petr Rockai";
      homepage = "";
      url = "";
      synopsis = "simple utility for rolling filesystem backups";
      description = "Take backups of a directory and store them in a hashed format.\nCurrently only supports plain files and directories. Very crude\nand limited, do NOT use in production. To be improved. Will break\nbackward compatibility in future versions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsbackup" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hashed-storage)
            (hsPkgs.cmdargs)
            (hsPkgs.strict)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            ];
          };
        };
      };
    }