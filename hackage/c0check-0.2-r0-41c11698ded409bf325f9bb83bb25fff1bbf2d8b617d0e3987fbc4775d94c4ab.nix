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
      specVersion = "1.2";
      identifier = { name = "c0check"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ds@iai.uni-bonn.de";
      author = "Daniel Seidel";
      homepage = "";
      url = "";
      synopsis = "Simple C0 Syntax Check";
      description = "The package contains a progam to check if your C-Program is valid C0.\nThe C0-language is introduced in the basic programming course \\\"Algorithmisches Denken und imperative Programmierung\\\" (WS 2012/13 and later) at the University of Bonn.\nThe program contained in the package will take a C source code file and test the content if it is conform to the C0-language specifications.\nIf not it points to the non-conformant code part.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "c0check" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c0parser" or (errorHandler.buildDepError "c0parser"))
          ];
          buildable = true;
        };
      };
    };
  }