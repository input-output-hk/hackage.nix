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
      specVersion = "1.6";
      identifier = { name = "virthualenv"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Bartosz Ćwikłowski";
      maintainer = "paczesiowa@gmail.com";
      author = "Bartosz Ćwikłowski";
      homepage = "https://github.com/Paczesiowa/virthualenv";
      url = "http://hackage.haskell.org/package/virthualenv";
      synopsis = "Virtual Haskell Environment builder";
      description = "virthualenv is a tool (inspired by Python's virtualenv) to create isolated Haskell environments.\n\nvirthualenv is deprecated, please use the hsenv tool.\n\nIt creates a sandboxed environment in a .virthualenv/ directory, which, when activated,\nallows you to use regular Haskell tools (ghc, ghci, ghc-pkg, cabal) to manage your Haskell\ncode and environment. It's possible to create an environment, that uses different GHC version\nthan your currently installed. virthualenv is supposed to be easier to learn (and use) than\nsimilar packages (like cabal-dev or capri).\n\nBasic usage.\n\nFirst, choose a directory where you want to keep your sandboxed Haskell environment,\nusually a good choice is a directory containing your cabalized project (if you want to work\non a few projects (perhaps an app and its dependent library), just choose any of them,\nit doesn't really matter). Enter that directory:\n\n> cd ~/projects/foo\n\nNext, create your new isolated Haskell environment (this is a one time only (per environment) step):\n\n> virthualenv\n\nNow, every time you want to use this enviroment, you have to activate it:\n\n> source .virthualenv/bin/activate\n\nThat's it! Now it's possible to use all regular Haskell tools like usual, but it won't affect\nyour global/system's Haskell environment, and also your per-user environment (from ~/.cabal and\n~/.ghc) will stay the same. All cabal-installed packages will be private to this environment,\nand also the external environments (global and user) will not affect it (this environment\nwill only inherit very basic packages - mostly ghc and Cabal and their deps).\n\nWhen you're done working with this environment, enter command 'deactivate',\nor just close the current shell (with exit).\n\n> deactivate\n\nAdvanced usage.\n\nThe only advanced usage is using different GHC version. This can be useful to test your code\nagainst different GHC version (even against nightly builds).\n\nFirst, download binary distribution of GHC for your platform\n(e.g. ghc-7.0.4-i386-unknown-linux.tar.bz2), then create a new environment using that GHC\n\n> virthualenv --ghc=/path/to/ghc_something.tar.bz2\n\nThen, proceed (with [de]activation) as in basic case.\n\nMisc.\n\nvirthualenv has been tested on i386 Linux systems, but it should work on any Posix platform.\nExternal (from tarball) GHC feature requires binary GHC distribution compiled for your platform,\nthat can be extracted with tar and installed with \"./configure --prefix=PATH; make install\".\n\nFor more info please consult \"virthualenv --help\" or the attached README file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "virthualenv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          ];
          buildable = true;
        };
      };
    };
  }