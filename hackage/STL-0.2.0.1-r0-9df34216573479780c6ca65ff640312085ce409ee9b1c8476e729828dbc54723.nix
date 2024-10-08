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
      identifier = { name = "STL"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bergey@alum.mit.edu";
      author = "Daniel Bergey";
      homepage = "http://github.com/bergey/STL";
      url = "";
      synopsis = "STL 3D geometry format parsing and pretty-printing";
      description = "STL is a simple file format for representing 3D\nobjects as the triangles which form their\nsurface.  It is common in 3D printing workflows.\nThis library provides parsing and serialization\nto and from both text and binary STL formats.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }