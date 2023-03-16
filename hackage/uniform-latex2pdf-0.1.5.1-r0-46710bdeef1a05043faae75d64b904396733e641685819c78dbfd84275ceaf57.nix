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
      specVersion = "1.12";
      identifier = { name = "uniform-latex2pdf"; version = "0.1.5.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Andrew U. Frank <andrewufrank@gmail.com>";
      author = "Andrew Frank";
      homepage = "https://github.com/git@github.com:andrewufrank/u4blog.git#readme";
      url = "";
      synopsis = "convert a latex `tex` file to a pdf";
      description = "convert a latex file to pdf\ncalling lualatex with the flags etc. necessary to include bibliography and footnotes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
          (hsPkgs."uniform-json" or (errorHandler.buildDepError "uniform-json"))
          (hsPkgs."uniformBase" or (errorHandler.buildDepError "uniformBase"))
          ];
        buildable = true;
        };
      };
    }