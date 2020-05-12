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
    flags = { splitbase = true; executable = false; pcre-light = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "highlighting-kate"; version = "0.5.8.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/highlighting-kate";
      url = "";
      synopsis = "Syntax highlighting";
      description = "highlighting-kate is a syntax highlighting library\nwith support for nearly one hundred languages. The syntax\nparsers are automatically generated from Kate\nsyntax descriptions (<http://kate-editor.org/>),\nso any syntax supported by Kate can be added.\nAn (optional) command-line program is provided, along\nwith a utility for generating new parsers from Kate\nXML syntax descriptions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ])) ++ (if flags.pcre-light
          then [
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            ]
          else [
            (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
            ]);
        buildable = true;
        };
      exes = {
        "Highlight" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
            ];
          buildable = if flags.executable then true else false;
          };
        };
      };
    }