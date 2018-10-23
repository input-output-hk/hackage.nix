{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hipbot";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Richard Wallace";
      maintainer = "Richard Wallace <rwallace@atlassian.com>";
      author = "Richard Wallace <rwallace@atlassian.com>";
      homepage = "https://github.com/purefn/hipbot";
      url = "";
      synopsis = "A library for building HipChat Bots";
      description = "A library for building HipChat Bots";
      buildType = "Simple";
    };
    components = {
      "hipbot" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bifunctors)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.jwt)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.postgresql-simple)
          (hsPkgs.resource-pool)
          (hsPkgs.safe)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.wai)
          (hsPkgs.wai-lens)
          (hsPkgs.webcrank-wai)
          (hsPkgs.wreq)
        ];
      };
    };
  }