{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "asset-bundle"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Aditya Siram";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "https://github.com/deech/asset-bundle#readme";
      url = "";
      synopsis = "A build-time Cabal library that bundles executables with assets";
      description = "Please see the Hackage documentation at <http://hackage.haskell.org/package/asset-bundle/docs/Distribution-Simple-AssetBundle.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          ];
        };
      };
    }