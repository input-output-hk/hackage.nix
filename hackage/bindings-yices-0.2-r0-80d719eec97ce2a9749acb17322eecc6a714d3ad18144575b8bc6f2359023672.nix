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
    flags = { yices-dynamic = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "bindings-yices"; version = "0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Jose Iborra";
      homepage = "";
      url = "";
      synopsis = "Bindings to the Yices theorem prover";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [
          (pkgs."yices" or (errorHandler.sysDepError "yices"))
          ] ++ (pkgs.lib).optional (flags.yices-dynamic) (pkgs."gmp" or (errorHandler.sysDepError "gmp"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }