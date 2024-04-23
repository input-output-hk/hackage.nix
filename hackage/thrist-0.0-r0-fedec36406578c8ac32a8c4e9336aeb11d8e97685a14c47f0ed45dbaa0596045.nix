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
      identifier = { name = "thrist"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Gabor Greif";
      maintainer = "ggreif@gmail.com";
      author = "Gabor Greif";
      homepage = "http://heisenbug.blogspot.com/search/label/thrist";
      url = "";
      synopsis = "Type-threaded list";
      description = "Thrist is a list-like data structure (GADT)\nwhose elements are values of a two-parameter\ndatatype. The typing constraint ensures that\nthe second type parameter of a former value\nunifies with the first type parameter of the\nlatter.\n\nThis threading of types is the foundation for\nthrists' nice properties. E.g., paired with a\nsuitable semantics, function composition (.)\ncan be embedded.\n\nFor further ideas, please consult the companion\n(draft) paper \\\"Thrists: Dominoes of Data\\\" at\n<http://www.opendylan.org/~gabor/Thrist-draft-2008-07-18.pdf>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }