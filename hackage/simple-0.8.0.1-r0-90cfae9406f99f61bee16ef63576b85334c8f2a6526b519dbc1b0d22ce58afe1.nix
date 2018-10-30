{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "simple";
        version = "0.8.0.1";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "amit@amitlevy.com";
      author = "Amit Levy, Daniel B. Giffin";
      homepage = "http://simple.cx";
      url = "";
      synopsis = "A minimalist web framework for the WAI server interface";
      description = "\\Simple\\ is \\\"framework-less\\\" web framework for Haskell web applications\nbased on the WAI server interface (e.g. for use with the warp server).\n\\Simple\\ does not enforce a particular structure or paradigm for web\napplications. Rather, \\Simple\\ contains tools to help you create your own\npatterns (or re-create existing ones). \\Simple\\ is minimalist, providing a\nlightweight base - the most basic \\Simple\\ app is little more than a WAI\n`Application` with some routing logic. Everything else (e.g. authentication,\ncontrollers, persistence, caching etc\\') is provided in composable units, so\nyou can include only the ones you need in your app, and easily replace\nwith your own components.\n\nTo get started, create an app skeleton with the `smpl` utility:\n\n@\n\$ cabal install simple\n\$ smpl create my_app_name\n\$ cd my_app_name\n\$ smpl\n@\n\nSee \"Web.Simple\" for a more detailed introduction.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mime-types)
          (hsPkgs.monad-peel)
          (hsPkgs.simple-templates)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "smpl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.setenv)
            (hsPkgs.simple-templates)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }