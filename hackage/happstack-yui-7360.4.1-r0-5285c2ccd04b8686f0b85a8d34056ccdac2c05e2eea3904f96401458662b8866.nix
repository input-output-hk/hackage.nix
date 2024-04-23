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
    flags = { embed = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "happstack-yui"; version = "7360.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dag.odenhall@gmail.com";
      author = "";
      homepage = "https://github.com/dag/happstack-yui";
      url = "";
      synopsis = "Utilities for using YUI3 with Happstack.";
      description = "Bundles YUI 3.6.0 and includes a \\\"combo handler\\\" for use in\nHappstack which concatenates YUI modules server-side to send in a single\nHTTP request.  The YUI bundle can be embedded in compiled code with\nTemplate Haskell (install with @-fembed@) which means the files are\nserved directly from memory, and also that you can compile and deploy a\nsingle executable without having to worry about deploying the YUI files\nas well.\n\nThe benefits of using this over the Yahoo! CDN is that you can work\noffline and that you can host YUI yourself without sacrificing the\nbenefits of \\\"combo loading\\\".\n\nThe versioning scheme of this package is that the first part is the\ntargeted Happstack series plus the bundled YUI version, such that 7351\nmeans \\\"Happstack 7, YUI 3.5.1\\\".  The second part is the major version\nof this package itself, as defined by the Package Versioning Policy.\n\nThe package also includes some utilities for working with the YUI CSS\nmodules and for using HSX to create YUI Node objects with JMacro.  In a\nfuture release, the plan is to add more utilities, for example a combo\nhandler for YUI modules written using JMacro, tools for making it\neasier to work with modules like Uploader and Pjax and a quasi-quoter for\ncompile-time syntax checked YQL queries.\n\nFor an example application, see:\n<https://github.com/dag/happstack-yui/blob/master/demo/happstack-yui-demo.hs>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."boomerang" or (errorHandler.buildDepError "boomerang"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."happstack-jmacro" or (errorHandler.buildDepError "happstack-jmacro"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
          (hsPkgs."interpolatedstring-perl6" or (errorHandler.buildDepError "interpolatedstring-perl6"))
          (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
          (hsPkgs."web-routes-boomerang" or (errorHandler.buildDepError "web-routes-boomerang"))
          (hsPkgs."web-routes-happstack" or (errorHandler.buildDepError "web-routes-happstack"))
          (hsPkgs."web-routes-th" or (errorHandler.buildDepError "web-routes-th"))
        ] ++ (if !flags.embed
          then [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ]
          else [
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          ]);
        buildable = true;
      };
    };
  }