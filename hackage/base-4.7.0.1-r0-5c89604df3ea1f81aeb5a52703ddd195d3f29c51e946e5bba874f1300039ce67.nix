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
    flags = { integer-simple = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "base"; version = "4.7.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Basic libraries";
      description = "This package contains the \"Prelude\" and its support libraries,\nand a large collection of useful libraries ranging from data\nstructures to parsing combinators and debugging utilities.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."rts" or (errorHandler.buildDepError "rts"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ] ++ (if flags.integer-simple
          then [
            (hsPkgs."integer-simple" or (errorHandler.buildDepError "integer-simple"))
          ]
          else [
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          ]);
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."wsock32" or (errorHandler.sysDepError "wsock32"))
          (pkgs."user32" or (errorHandler.sysDepError "user32"))
          (pkgs."shell32" or (errorHandler.sysDepError "shell32"))
        ];
        buildable = true;
      };
    };
  }