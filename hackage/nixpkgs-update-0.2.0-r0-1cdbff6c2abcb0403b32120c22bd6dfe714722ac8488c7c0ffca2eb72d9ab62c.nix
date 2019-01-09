{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nixpkgs-update"; version = "0.2.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2018 Ryan Mulligan";
      maintainer = "ryan@ryantm.com";
      author = "Ryan Mulligan";
      homepage = "https://github.com/ryantm/nixpkgs-update#readme";
      url = "";
      synopsis = "Tool for semi-automatic updating of nixpkgs repository";
      description = "nixpkgs-update provides tools for updating of nixpkgs packages in a semi-automatic way. Mainly, it is used to run the GitHub bot @r-ryantm, but the underlying update mechanisms should be generally useful and in a later version should be exposed as a command-line tool.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "nixpkgs-update" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.errors)
            (hsPkgs.filepath)
            (hsPkgs.github)
            (hsPkgs.mtl)
            (hsPkgs.neat-interpolation)
            (hsPkgs.optparse-applicative)
            (hsPkgs.regex-applicative)
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.errors)
            (hsPkgs.filepath)
            (hsPkgs.github)
            (hsPkgs.mtl)
            (hsPkgs.neat-interpolation)
            (hsPkgs.optparse-applicative)
            (hsPkgs.regex-applicative)
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }