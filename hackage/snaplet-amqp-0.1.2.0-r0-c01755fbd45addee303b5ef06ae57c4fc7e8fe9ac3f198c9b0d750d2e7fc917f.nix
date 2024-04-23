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
      specVersion = "1.12";
      identifier = { name = "snaplet-amqp"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Parnell Springmeyer";
      maintainer = "parnell@digitalmentat.com";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/snaplet-amqp";
      url = "http://hackage.haskell.org/package/snaplet-amqp";
      synopsis = "Snap framework snaplet for the AMQP library";
      description = "`snaplet-amqp` is a snaplet for the Snap web framework providing\nconvenience functions and state management for the Haskell AMQP\npackage.\n\nBelow is an incomplete example.\n\n@\nimport           Control.Lens\nimport           Snap\nimport           Snap.Snaplet\nimport           Snap.Snaplet.AMQP\ndata App = App\n{ _amqp    :: Snaplet AmqpState }\nmakeLenses ''App\ninstance HasAmqpConn (Handler b App) where\ngetAmqpConn = with amqp getAmqpConn\napp :: SnapletInit App App\napp = makeSnaplet \"app\" \"An snaplet example application.\" Nothing $ do\na <- nestSnaplet \"amqp\" amqp initAMQP\naddRoutes appRoutes -- Your routes, I haven't defined any here\nreturn $ App a";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }