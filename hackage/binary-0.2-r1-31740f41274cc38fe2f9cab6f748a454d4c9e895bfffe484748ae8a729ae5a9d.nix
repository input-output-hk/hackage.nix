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
      identifier = { name = "binary"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Kolmodin";
      author = "Lennart Kolmodin <kolmodin@dtek.chalmers.se>";
      homepage = "";
      url = "";
      synopsis = "Binary serialization using lazy ByteStrings";
      description = "Efficient, pure binary serialisation using lazy ByteStrings";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }