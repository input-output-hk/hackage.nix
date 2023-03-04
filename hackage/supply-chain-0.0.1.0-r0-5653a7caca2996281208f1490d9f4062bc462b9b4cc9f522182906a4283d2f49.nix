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
      identifier = { name = "supply-chain"; version = "0.0.1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/supply-chain";
      url = "";
      synopsis = "Composable request-response pipelines";
      description = "@Job@ is a free monad, plus a little extra. It is parameterized on\ntwo type constructors: one for dynamic effects, and one for static\neffects. The @Vendor@ type is similar to job, but a vendor can also\n/respond to/ requests, and thus it has two dynamic interfaces: one\nupstream and one downstream. We can connect vendors to jobs or to\nother vendors, creating a pipeline (or \"supply chain\", if you like)\nalong the dynamic interfaces.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."supply-chain-core" or (errorHandler.buildDepError "supply-chain-core"))
          ];
        buildable = true;
        };
      };
    }