{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "cabal-bundle-clib"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019, Isumi Feng";
      maintainer = "contact@zelinf.net";
      author = "Isumi Feng";
      homepage = "https://github.com/isumif/cabal-bundle-clib";
      url = "";
      synopsis = "Bundling C/C++ projects in Cabal package made easy";
      description = "Please see the [README](https://github.com/isumif/cabal-bundle-clib)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.temporary)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.bytestring)
          ];
        };
      };
    }