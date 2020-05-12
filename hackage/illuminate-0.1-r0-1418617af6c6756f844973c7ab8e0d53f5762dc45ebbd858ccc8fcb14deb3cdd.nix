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
    flags = { executable = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "illuminate"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/illuminate";
      url = "";
      synopsis = "A fast syntax highlighting library built with alex. ";
      description = "illuminate is a source-code syntax highlighting\nlibrary and a command-line highlighting tool.\nIt can produce output in HTML, XHTML, LaTeX, or\nANSI. It is smaller, less memory-hungry, and\nmuch faster than highlighting-kate.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
          ];
        buildable = true;
        };
      exes = {
        "illuminate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
            ];
          buildable = if flags.executable then true else false;
          };
        };
      };
    }