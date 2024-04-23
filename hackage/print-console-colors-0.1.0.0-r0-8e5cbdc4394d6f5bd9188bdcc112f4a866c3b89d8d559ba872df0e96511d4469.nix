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
      identifier = { name = "print-console-colors"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/print-console-colors#readme";
      url = "";
      synopsis = "Print all ANSI console colors";
      description = "Print all ANSI console colors.\n\n\n<<https://raw.githubusercontent.com/cdepillabout/print-console-colors/master/img/example.png>>\n\nThis is convenient when you are trying to set your console colors,\nfor example when configuring <https://github.com/cdepillabout/termonad Termonad>.\n\nFor installation and usage instructions, see the\n<https://github.com/cdepillabout/print-console-colors README>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
        ];
        buildable = true;
      };
      exes = {
        "print-console-colors" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."print-console-colors" or (errorHandler.buildDepError "print-console-colors"))
          ];
          buildable = true;
        };
      };
    };
  }