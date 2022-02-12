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
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "velma"; version = "0.2022.2.11"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Automatically add files to exposed-modules and other-modules.";
      description = "Velma is a Haskell package that makes it easy to automatically add files to\n@exposed-modules@ and @other-modules@ in Cabal package descriptions, also\nknown as @*.cabal@ files.\n\n== Usage\n\n> -- example.cabal\n> name: example\n> version: 0\n> build-type: Custom\n> custom-setup\n>     build-depends: base, Cabal, velma\n> library\n>     build-depends: base\n>     hs-source-dirs: source/library\n>     exposed-modules: Velma.Discover";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "velma" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."velma" or (errorHandler.buildDepError "velma"))
            ];
          buildable = true;
          };
        };
      };
    }