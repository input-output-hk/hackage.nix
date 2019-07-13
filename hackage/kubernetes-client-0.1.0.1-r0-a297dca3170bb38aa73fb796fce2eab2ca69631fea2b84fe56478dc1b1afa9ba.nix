{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "kubernetes-client"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Shimin Guo <smguo2001@gmail.com>,\nAkshay Mankar <itsakshaymankar@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Client library for Kubernetes";
      description = "Client library for interacting with a Kubernetes cluster.\n\nThis package contains hand-written code while kubernetes-client-core contains code auto-generated from the OpenAPI spec.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.connection)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.kubernetes-client-core)
          (hsPkgs.microlens)
          (hsPkgs.mtl)
          (hsPkgs.pem)
          (hsPkgs.safe-exceptions)
          (hsPkgs.streaming-bytestring)
          (hsPkgs.text)
          (hsPkgs.tls)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
          (hsPkgs.x509-system)
          (hsPkgs.x509-validation)
          ];
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.connection)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.kubernetes-client)
            (hsPkgs.kubernetes-client-core)
            (hsPkgs.microlens)
            (hsPkgs.mtl)
            (hsPkgs.pem)
            (hsPkgs.safe-exceptions)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.text)
            (hsPkgs.tls)
            (hsPkgs.x509)
            (hsPkgs.x509-store)
            (hsPkgs.x509-system)
            (hsPkgs.x509-validation)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.connection)
            (hsPkgs.containers)
            (hsPkgs.data-default-class)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.kubernetes-client)
            (hsPkgs.kubernetes-client-core)
            (hsPkgs.microlens)
            (hsPkgs.mtl)
            (hsPkgs.pem)
            (hsPkgs.safe-exceptions)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.text)
            (hsPkgs.tls)
            (hsPkgs.x509)
            (hsPkgs.x509-store)
            (hsPkgs.x509-system)
            (hsPkgs.x509-validation)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }