{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clckwrks-cli"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw, SeeReason Partners LLC";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "a command-line interface for adminstrating some aspects of clckwrks";
      description = "This tool permits browsing of users, changing their roles, and other features.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.acid-state)
          (hsPkgs.base)
          (hsPkgs.clckwrks)
          (hsPkgs.containers)
          (hsPkgs.haskeline)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.parsec)
          ];
        };
      exes = {
        "clckwrks-cli" = {
          depends = [
            (hsPkgs.acid-state)
            (hsPkgs.base)
            (hsPkgs.clckwrks)
            (hsPkgs.clckwrks-cli)
            (hsPkgs.containers)
            (hsPkgs.haskeline)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.parsec)
            ];
          };
        };
      };
    }