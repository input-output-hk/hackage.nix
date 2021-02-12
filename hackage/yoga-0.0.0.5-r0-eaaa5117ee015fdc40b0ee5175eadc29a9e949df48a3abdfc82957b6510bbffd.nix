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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "yoga"; version = "0.0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2017-present";
      maintainer = "Krajcevski@gmail.com";
      author = "Pavel Krajcevski";
      homepage = "";
      url = "";
      synopsis = "Bindings to Facebook's Yoga layout library";
      description = "The <https://facebook.github.com/yoga Yoga> library from\n<https://facebook.github.com/ Facebook> is a fast layout engine\nwritten in C that implements flexbox. There are two\nmain ways to interface with these bindings. The high-level\nbindings are stored in the Yoga module and provide a more\nHaskell-like interface to the library. The other option is to\ndirectly use the C-level bindings in \"Bindings.Yoga\". If you do\nso you do so at your own risk (i.e. you must manage your own\nmemory).\nThe examples are not built nor included by default. Please\nrefer to the source tarball for examples on how to use this\nlibrary.\nThese bindings are not affiliated with Facebook in any way,\nand have been developed separately for the sole purpose of\ninterfacing with their open source library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "yoga-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yoga" or (errorHandler.buildDepError "yoga"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }