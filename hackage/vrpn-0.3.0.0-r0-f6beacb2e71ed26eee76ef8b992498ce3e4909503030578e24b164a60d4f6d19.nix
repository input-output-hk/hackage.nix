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
    flags = { quatstatic = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "vrpn"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "(c) 2015-19 Brian W Bush";
      maintainer = "Brian W Bush <code@functionally.io>";
      author = "Brian W Bush <code@functionally.io>";
      homepage = "https://bitbucket.org/functionally/vrpn";
      url = "https://bitbucket.org/functionally/vrpn/vrp-\$version.tar.gz";
      synopsis = "Bindings to VRPN.";
      description = "See \\<<https://github.com/vrpn/vrpn/wiki>\\> for information on VRPN.  This has been tested using VRPN 07.30 on Linux.\n\nIf the VRPN libraries are static and this package is used from Template Haskell, then the package needs to be configured with the QuatStatic flag.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = if flags.quatstatic
          then [
            (pkgs."vrpn" or (errorHandler.sysDepError "vrpn"))
            (pkgs."quat" or (errorHandler.sysDepError "quat"))
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
            ]
          else [
            (pkgs."vrpn" or (errorHandler.sysDepError "vrpn"))
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
            ];
        buildable = true;
        };
      exes = {
        "test-vrpn" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          libs = if flags.quatstatic
            then [
              (pkgs."vrpn" or (errorHandler.sysDepError "vrpn"))
              (pkgs."quat" or (errorHandler.sysDepError "quat"))
              (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
              ]
            else [
              (pkgs."vrpn" or (errorHandler.sysDepError "vrpn"))
              (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
              ];
          buildable = true;
          };
        };
      };
    }