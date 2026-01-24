{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "libarchive-clib"; version = "3.8.5"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright: (c) 2018-2020 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Haskell interface to libarchive (C sources)";
      description = "Bundled libarchive C sources for use with the libarchive Haskell bindings.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."zlib-clib" or (errorHandler.buildDepError "zlib-clib"))
        ];
        buildable = true;
      };
    };
  }