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
      identifier = { name = "xmonad-vanessa"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Vanessa McHale";
      maintainer = "tmchale@wisc.edu";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/xmonad-vanessa#readme";
      url = "";
      synopsis = "Custom xmonad, via stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
          (hsPkgs."xmonad-contrib" or (errorHandler.buildDepError "xmonad-contrib"))
          (hsPkgs."xmonad-extras" or (errorHandler.buildDepError "xmonad-extras"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."tibetan-utils" or (errorHandler.buildDepError "tibetan-utils"))
          ];
        buildable = true;
        };
      exes = {
        "xmonad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xmonad-vanessa" or (errorHandler.buildDepError "xmonad-vanessa"))
            ];
          buildable = true;
          };
        "getkb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xmonad-vanessa" or (errorHandler.buildDepError "xmonad-vanessa"))
            ];
          buildable = true;
          };
        };
      };
    }