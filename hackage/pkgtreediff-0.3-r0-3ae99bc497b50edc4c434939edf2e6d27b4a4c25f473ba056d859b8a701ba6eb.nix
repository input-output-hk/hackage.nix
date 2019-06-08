{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "pkgtreediff"; version = "0.3"; };
      license = "GPL-3.0-only";
      copyright = "2019 Jens Petersen";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/pkgtreediff";
      url = "";
      synopsis = "Package tree diff tool";
      description = "Tool for comparing RPM package files in OS dist trees.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pkgtreediff" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.Glob)
            (hsPkgs.http-directory)
            (hsPkgs.simple-cmd)
            (hsPkgs.simple-cmd-args)
            (hsPkgs.text)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups);
          };
        };
      };
    }