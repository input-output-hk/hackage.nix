{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { profiling = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "thentos-cookie-session";
        version = "0.9.0";
      };
      license = "LicenseRef-AGPL";
      copyright = "liquid democracy e.V. (https://liqd.net/)";
      maintainer = "mf@zerobuzz.net, np@nicolaspouillard.fr";
      author = "Matthias Fischmann, Florian Hartwig, Christian Siefkes, Nicolas Pouillard";
      homepage = "https://github.com/liqd/thentos";
      url = "";
      synopsis = "All-in-one session handling for servant-based frontends";
      description = "Uses cookies to store session keys.\n\nOffers CSRF protection.\n\nDesigned with HTML frontends in mind, but Suitable for any HTTP service.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cookie)
          (hsPkgs.cryptonite)
          (hsPkgs.digestive-functors)
          (hsPkgs.lens)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.sandi)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vault)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-session)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cookie)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.http-types)
            (hsPkgs.servant-server)
            (hsPkgs.thentos-cookie-session)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-session)
            (hsPkgs.transformers)
            (hsPkgs.vault)
          ];
        };
      };
    };
  }