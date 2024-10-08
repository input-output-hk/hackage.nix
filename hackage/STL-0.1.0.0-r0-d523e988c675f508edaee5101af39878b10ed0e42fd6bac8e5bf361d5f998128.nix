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
      identifier = { name = "STL"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bergey@alum.mit.edu";
      author = "Daniel Bergey";
      homepage = "http://github.com/bergey/STL";
      url = "";
      synopsis = "STL 3D geometry format parsing and pretty-printing";
      description = "STL is a simple file format for representing 3D\nobjects as the triangles which form their\nsurface.  It is common in 3D printing workflows.\nThis library provides parsing and serialization\nto the ASCII STL format.  The binary STL format\nis not yet supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }