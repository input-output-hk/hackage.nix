{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14.0";
      identifier = {
        name = "snaplet-amqp";
        version = "0.1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Parnell Springmeyer";
      maintainer = "parnell@digitalmentat.com";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/snaplet-amqp";
      url = "http://hackage.haskell.org/package/snaplet-amqp";
      synopsis = "Snap framework snaplet for the AMQP library";
      description = "`snaplet-amqp` is a snaplet for the Snap web framework providing\nconvenience functions and state management for the Haskell AMQP\npackage.\n\nBelow is an incomplete example.\n\n@\nimport           Control.Lens\nimport           Snap\nimport           Snap.Snaplet\nimport           Snap.Snaplet.AMQP\ndata App = App\n{ _amqp    :: Snaplet AmqpState }\nmakeLenses ''App\ninstance HasAmqpConn (Handler b App) where\ngetAmqpConn = with amqp getAmqpConn\napp :: SnapletInit App App\napp = makeSnaplet \"app\" \"An snaplet example application.\" Nothing \$ do\na <- nestSnaplet \"amqp\" amqp initAMQP\naddRoutes appRoutes -- Your routes, I haven't defined any here\nreturn \$ App a\n@";
      buildType = "Simple";
    };
    components = {
      "snaplet-amqp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.snap)
          (hsPkgs.amqp)
          (hsPkgs.transformers)
          (hsPkgs.configurator)
          (hsPkgs.network)
          (hsPkgs.mtl)
        ];
      };
    };
  }