{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "cabal-helper"; version = "0.8.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "dxld@darkboxed.org";
      author = "Daniel Gröber <dxld@darkboxed.org>";
      homepage = "";
      url = "";
      synopsis = "Simple interface to some of Cabal's configuration state, mainly used by ghc-mod";
      description = "Cabal's little helper provides access to build information gathered by\n@cabal@ when configuring a project. Specifically we're interested in\nretrieving enough information to bring up a compiler session, using the GHC\nAPI, which is similar to running @cabal repl@ in a project.\n\nWhile simple in principle this is complicated by the fact that the\ninformation Cabal writes to disk is in an unstable format and only really\naccessible through the Cabal API itself.\n\nSince we do not want to bind the user of a development tool which utilises\nthis library to a specific version of Cabal we compile the code which\ninterfaces with the Cabal library's API on the user's machine, at runtime,\nagainst whichever version of Cabal was used to write the on disk information\nfor a given project.\n\nIf this version of Cabal is not available on the users machine anymore,\nwhich is fairly likely since cabal-install is usually linked statically, we\nhave support for compiling the Cabal library also. In this case the library\nis installed into a private, isolated, package database in\n@\$XDG_CACHE_HOME/cabal-helper@ so as to not interfere with the user's\npackage database.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.unix-compat)
          (hsPkgs.semigroupoids)
          (hsPkgs.ghc-prim)
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.base)) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
        };
      exes = {
        "cabal-helper-wrapper" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.template-haskell)
            (hsPkgs.temporary)
            (hsPkgs.transformers)
            (hsPkgs.unix-compat)
            (hsPkgs.utf8-string)
            (hsPkgs.ghc-prim)
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.base)) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
          build-tools = [ ((hsPkgs.buildPackages).cabal-install) ];
          };
        "cabal-helper-main" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.ghc-prim)
            ];
          };
        };
      tests = {
        "compile-test" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.template-haskell)
            (hsPkgs.temporary)
            (hsPkgs.transformers)
            (hsPkgs.unix-compat)
            (hsPkgs.utf8-string)
            (hsPkgs.ghc-prim)
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.base)) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
          build-tools = [ ((hsPkgs.buildPackages).cabal-install) ];
          };
        "ghc-session" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.cabal-helper)
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.template-haskell)
            (hsPkgs.temporary)
            (hsPkgs.transformers)
            (hsPkgs.unix-compat)
            (hsPkgs.utf8-string)
            (hsPkgs.ghc-prim)
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.base)) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
          build-tools = [ ((hsPkgs.buildPackages).cabal-install) ];
          };
        };
      };
    }