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
      specVersion = "1.0";
      identifier = { name = "binary-shared"; version = "0.8"; };
      license = "LicenseRef-GPL";
      copyright = "Jürgen Nicklisch-Franken (jutaro)";
      maintainer = "maintainer@leksah.org";
      author = "Jürgen Nicklisch-Franken (jutaro)";
      homepage = "http://www.leksah.org";
      url = "http://code.haskell.org/binary-shared";
      synopsis = "Sharing for the binary package";
      description = "I had problems with the size of the allocated heap space after serializing\nand loading data with the binary package. The reason was that\nbinary does not support sharing of identical elements, so I came up\nwith the generic solution in this package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }