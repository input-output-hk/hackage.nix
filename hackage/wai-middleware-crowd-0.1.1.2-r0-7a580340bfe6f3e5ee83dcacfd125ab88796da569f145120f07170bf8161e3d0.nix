{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-middleware-crowd"; version = "0.1.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "";
      url = "";
      synopsis = "Middleware and utilities for using Atlassian Crowd authentication";
      description = "See README";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.http-client)
          (hsPkgs.wai)
          (hsPkgs.authenticate)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.http-types)
          (hsPkgs.blaze-builder)
          (hsPkgs.binary)
          (hsPkgs.base64-bytestring)
          (hsPkgs.time)
          (hsPkgs.clientsession)
          (hsPkgs.cookie)
          (hsPkgs.http-client-tls)
          (hsPkgs.unix-compat)
          (hsPkgs.vault)
          ];
        };
      exes = {
        "wai-crowd" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.clientsession)
            (hsPkgs.gitrev)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-reverse-proxy)
            (hsPkgs.optparse-applicative)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai-middleware-crowd)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }