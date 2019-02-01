{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-enforce-https"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marek.faj@gmail.com";
      author = "Marek Fajkus";
      homepage = "https://github.com/turboMaCk/wai-enforce-https";
      url = "";
      synopsis = "Enforce HTTPS in Wai server app safely.";
      description = "Wai middleware enforcing HTTPS protocol on any incoming request. In case of non-encrypted HTTP, traffic is redirected using 301 Permanent Redirect or optionally 307 Temporary Redirect. Middleware has compatibility modes for various reverse proxies (load balancers) and therefore can be used with Heroku, Google Cloud (Ingress), Azure or any other type of PAS or Cloud provider.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.network)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.case-insensitive)
          ];
        };
      exes = {
        "example-tls" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wai-enforce-https)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.warp-tls)
            (hsPkgs.http-types)
            ];
          };
        "example-proxy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wai-enforce-https)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.http-types)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.wai-enforce-https)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.http-types)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            ];
          };
        };
      };
    }