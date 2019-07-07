{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "hkgr"; version = "0.2.2"; };
      license = "GPL-3.0-only";
      copyright = "2019 Jens Petersen";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/hkgr";
      url = "";
      synopsis = "Simple Hackage release workflow for package maintainers";
      description = "Hkgr (pronouced \"Hackager\") is a tool to help make new releases of\nHaskell packages, with commands for git tagging, pristine sdist,\nand uploading to Hackage.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hkgr" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.simple-cabal)
            (hsPkgs.simple-cmd)
            (hsPkgs.simple-cmd-args)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups);
          };
        };
      };
    }