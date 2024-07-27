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
      identifier = { name = "pam"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Evgeny Tarasov\n(c) 2020 Oscar Harris";
      maintainer = "Oscar Harris <oscar@oscar-h.com>";
      author = "Evgeny Tarasov <etarasov.ekb@gmail.com>";
      homepage = "https://github.com/oscar-h64/pam-haskell";
      url = "";
      synopsis = "Haskell binding for C PAM API";
      description = "This package provides PAM interface for Haskell programs. See the README on GitHub at <Please see the README on GitHub at <https://github.com/oscar-h64/pam-haskell#readme> for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."pam" or (errorHandler.sysDepError "pam")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }