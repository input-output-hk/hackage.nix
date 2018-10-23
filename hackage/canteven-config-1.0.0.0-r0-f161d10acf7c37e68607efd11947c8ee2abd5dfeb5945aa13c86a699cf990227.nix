{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "canteven-config";
        version = "1.0.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rick@owenssoftware.com";
      author = "Rick Owens";
      homepage = "";
      url = "";
      synopsis = "A pattern for configuring programs.";
      description = "Turns out, all of our executables shared the same sort of\npattern for extracting configuration out of the\nenvironment: find a YAML config file based on the command\nline arguments and parse that file into a haskell value using\nthe yaml package. This package makes that process super\ntrivial.";
      buildType = "Simple";
    };
    components = {
      "canteven-config" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.yaml)
        ];
      };
    };
  }