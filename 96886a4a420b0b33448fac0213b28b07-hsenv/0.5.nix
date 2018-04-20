{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsenv";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Bartosz Ćwikłowski";
        maintainer = "Taylor Hedberg <t@tmh.cc>";
        author = "Bartosz Ćwikłowski";
        homepage = "https://github.com/tmhedberg/hsenv";
        url = "http://hackage.haskell.org/package/hsenv";
        synopsis = "Virtual Haskell Environment builder";
        description = "hsenv is a tool (inspired by Python's virtualenv) to create isolated Haskell environments.\n\nIt creates a sandboxed environment in a .hsenv/ sub-directory\nof your project, which, when activated, allows you to use regular Haskell tools\n(ghc, ghci, ghc-pkg, cabal) to manage your Haskell code and environment.\nIt's possible to create an environment, that uses different GHC version\nthan your currently installed. Very simple emacs integration mode is included.\n\nBasic usage\n\nFirst, choose a directory where you want to keep your\nsandboxed Haskell environment, usually a good choice is a directory containing\nyour cabalized project (if you want to work on a few projects\n(perhaps an app and its dependent library), just choose any of them,\nit doesn't really matter). Enter that directory:\n\n> cd ~/projects/foo\n\nNext, create your new isolated Haskell environment\n(this is a one time only (per environment) step):\n\n> hsenv\n\nNow, every time you want to use this environment, you have to activate it:\n\n> source .hsenv/bin/activate\n\nThat's it! Now it's possible to use all regular Haskell tools like usual,\nbut it won't affect your global/system's Haskell environment, and also\nyour per-user environment (from ~/.cabal and ~/.ghc) will stay the same.\nAll cabal-installed packages will be private to this environment,\nand also the external environments (global and user) will not affect it\n(this environment will only inherit very basic packages,\nmostly ghc and Cabal and their deps).\n\nWhen you're done working with this environment, enter command 'deactivate_hsenv',\nor just close the current shell (with exit).\n\n> deactivate_hsenv\n\nNamed vs Unnamed Environments\n\nBy default, hsenv creates an \"unnamed\" environment, but sometimes for\nparticular use cases you might want to create different environments under\nthe same directory. This is achievable creating a \"named\" environment. To\ndo that, just pass the flag \"--name=<ENVIRONMENT_NAME>\" to hsenv:\n\nhsenv --name=<ENVIRONMENT_NAME>\n\nThis will make hsenv to generate a folder of the form \".hsenv_<ENVIRONMENT_NAME>\".\n\nAdvanced usage.\n\nThe only advanced usage is using different GHC version. This can be useful to test your code\nagainst different GHC version (even against nightly builds).\n\nFirst, download binary distribution of GHC for your platform\n(e.g. ghc-7.0.4-i386-unknown-linux.tar.bz2), then create a new environment using that GHC\n\n> hsenv --ghc=/path/to/ghc_something.tar.bz2\n\nThen, proceed (with [de]activation) as in basic case.\n\nFetching and downloading a remote version of GHC\n\nRecent versions of hsenv include the possibility to automatically download\nand install a GHC version directly from the GHC main repository. To do that,\nas regards the example above, all you need to do is to pass the desired version\nof GHC you want to install:\n\n> hsenv --ghc=7.4.1\n\nOr a valid URL pointing to a compressed GHC archive:\n\n> hsenv --ghc=http://www.haskell.org/ghc/dist/7.6.3/ghc-7.6.3-x86_64-apple-darwin.tar.bz2\n\nMisc\n\nhsenv has been tested on i386 Linux and FreeBSD systems,\nbut it should work on any Posix platform. External (from tarball) GHC feature\nrequires binary GHC distribution compiled for your platform,\nthat can be extracted with tar and installed with\n\"./configure --prefix=PATH; make install\".\n\nFor more info please consult \"hsenv --help\" or the attached README file.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hsenv = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.Cabal
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.file-embed
              hsPkgs.split
              hsPkgs.safe
              hsPkgs.unix
              hsPkgs.http-streams
              hsPkgs.io-streams
            ];
          };
        };
      };
    }