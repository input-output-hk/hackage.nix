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
      specVersion = "1.10";
      identifier = { name = "validity"; version = "0.3.1.1"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Validity typeclass";
      description = "For more info, see <https://github.com/NorfairKing/validity the readme>.\n\nNote: There are companion instance packages for this library:\n\n* <https://hackage.haskell.org/package/validity-text validity-text>\n\n* <https://hackage.haskell.org/package/validity-path validity-path>\n\n* <https://hackage.haskell.org/package/validity-containers validity-containers>\n\n* <https://hackage.haskell.org/package/validity-bytestring validity-bytestring>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }