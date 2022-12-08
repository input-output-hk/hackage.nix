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
      specVersion = "3.0";
      identifier = { name = "om-plugin-imports"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "2022 Rick Owens";
      maintainer = "rick@owensmurray.com";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/om-plugin-imports";
      url = "";
      synopsis = "Plugin-based import warnings";
      description = "This is a plutin that acts similar to\n`-ddump-minimal-imports`, but the style\nof imports dumped to the dump directory\nis better. Where \"better\" means it will\nsatisfy `-Wmissing-import-lists` (which\n`-ddump-minimal-imports does not always), and it\nwill omit the explicit import list for imports\nthat are already qualified. The files are dumped\nto <dump-dir>/<module-name>.full-imports. No files\nwill be dumped unless `-dumpdir` is explicitly\npassed by the user.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ];
        buildable = true;
        };
      exes = {
        "om-import-warnings-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."om-plugin-imports" or (errorHandler.buildDepError "om-plugin-imports"))
            ];
          buildable = true;
          };
        };
      };
    }