{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      template_haskell = true;
      network-uri = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "happstack-server";
        version = "7.4.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Web related tools and services.";
      description = "Happstack Server provides an HTTP server and a rich set of functions for routing requests, handling query parameters, generating responses, working with cookies, serving files, and more. For in-depth documentation see the Happstack Crash Course <http://happstack.com/docs/crashcourse/index.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.filepath)
          (hsPkgs.hslogger)
          (hsPkgs.html)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.sendfile)
          (hsPkgs.system-filepath)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.time-compat)
          (hsPkgs.threads)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
          (hsPkgs.utf8-string)
          (hsPkgs.xhtml)
          (hsPkgs.zlib)
        ] ++ (if flags.network-uri
          then [
            (hsPkgs.network)
            (hsPkgs.network-uri)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optional (flags.template_haskell && !system.isArm) (hsPkgs.template-haskell)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      tests = {
        "happstack-server-tests" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.happstack-server)
            (hsPkgs.parsec)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }