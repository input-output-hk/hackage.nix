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
        name = "yamlkeysdiff";
        version = "0.5.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "devel@antoine.catton.fr";
      author = "Antoine Catton";
      homepage = "https://github.com/acatton/yamlkeysdiff";
      url = "";
      synopsis = "Compares the keys from two yaml files";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "yamlkeysdiff" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }