{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      base4 = true;
      network_2_2_3 = true;
      tests = false;
      https = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "happstack-server";
        version = "6.5.6";
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
        depends  = (((([
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.filepath)
          (hsPkgs.hslogger)
          (hsPkgs.html)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.sendfile)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.utf8-string)
          (hsPkgs.xhtml)
          (hsPkgs.zlib)
        ] ++ pkgs.lib.optional (flags.https) (hsPkgs.HsOpenSSL)) ++ (if flags.network_2_2_3
          then [ (hsPkgs.network) ]
          else [
            (hsPkgs.network)
            (hsPkgs.network-bytestring)
          ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optionals (flags.base4) [
          (hsPkgs.base)
          (hsPkgs.syb)
        ]) ++ pkgs.lib.optional (flags.tests) (hsPkgs.HUnit);
        libs = pkgs.lib.optionals (flags.https) [
          (pkgs."cryptopp")
          (pkgs."ssl")
        ];
      };
      exes = {
        "happstack-server-tests" = {
          depends  = pkgs.lib.optionals (flags.tests) [
            (hsPkgs.HUnit)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }