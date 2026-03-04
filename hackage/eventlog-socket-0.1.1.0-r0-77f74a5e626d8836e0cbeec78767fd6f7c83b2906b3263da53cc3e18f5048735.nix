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
    flags = { debug = false; control = false; optimise-heavily = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "eventlog-socket"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2026 Well-Typed";
      maintainer = "wen@well-typed.com";
      author = "Eventlog Socket Contributors";
      homepage = "";
      url = "";
      synopsis = "Stream GHC eventlog events to external processes.";
      description = "The @eventlog-socket@ package lets you stream the GHC eventlog over a socket in realtime.\nThis package exports both a Haskell API (from \"GHC.Eventlog.Socket\") and a C API (from [@eventlog_socket.h@](./docs/c/index.html)).\nFor most uses, the Haskell API is sufficient.\nHowever, if you want to instrument your application from a C main or install custom command handlers you need the C API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }