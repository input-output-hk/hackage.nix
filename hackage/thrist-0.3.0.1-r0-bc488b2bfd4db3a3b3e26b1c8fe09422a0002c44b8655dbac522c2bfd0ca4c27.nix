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
      specVersion = "1.6";
      identifier = { name = "thrist"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2013 Gabor Greif and Brandon Simmons";
      maintainer = "ggreif+thrist@gmail.com, brandon.m.simmons+thrist@gmail.com";
      author = "Gabor Greif, Brandon Simmons";
      homepage = "http://heisenbug.blogspot.com/search/label/thrist";
      url = "";
      synopsis = "Type-threaded list";
      description = "@Thrist@ is a list-like data structure (GADT)\nwhose elements are values of a two-parameter\ndatatype. The typing constraint ensures that\nthe second type parameter of a former value\nunifies with the first type parameter of the\nlatter.\n\nThis threading of types is the foundation for\nthrists' nice properties. E.g., paired with a\nsuitable semantics, function composition (.)\ncan be embedded.\n\nSub-modules demonstrate the power of the thrist\nidea by emulating some familiar data structures.\n\nFor further ideas, please consult the companion\n(draft) paper \\\"Thrists: Dominoes of Data\\\" at\n<http://omega.googlecode.com/files/Thrist-draft-2011-11-20.pdf>\n\nRelease history:\n\n[0.3] Support for (GHC v7.6.1) @PolyKinds@ extension, this compiler is required now\n\n[0.2] Several new functions introduced, some renamed\n\n[0.1] Initial version";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }