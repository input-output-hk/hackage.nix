{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "dl-fedora"; version = "0.5"; };
      license = "GPL-3.0-only";
      copyright = "2019  Jens Petersen";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/dl-fedora";
      url = "";
      synopsis = "Fedora image download tool";
      description = "Tool to download Fedora iso and image files";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dl-fedora" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-directory)
            (hsPkgs.http-types)
            (hsPkgs.optparse-applicative)
            (hsPkgs.regex-posix)
            (hsPkgs.simple-cmd)
            (hsPkgs.simple-cmd-args)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.xdg-userdirs)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups);
          };
        };
      };
    }