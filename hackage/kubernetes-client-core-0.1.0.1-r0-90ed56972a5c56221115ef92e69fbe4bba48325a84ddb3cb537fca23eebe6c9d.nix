{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usekatip = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "kubernetes-client-core"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Shimin Guo <smguo2001@gmail.com>";
      author = "Auto Generated";
      homepage = "https://github.com/kubernetes-client/haskell";
      url = "";
      synopsis = "Auto-generated kubernetes-client-core API Client";
      description = "\nClient library for calling the Kubernetes API based on http-client.\n\nhost: localhost\n\nbase path: http://localhost\n\nKubernetes API version: v1.14.2\n\nOpenAPI version: 3.0.1\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.iso8601-time)
          (hsPkgs.microlens)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ] ++ (if flags.usekatip
          then [ (hsPkgs.katip) ]
          else [ (hsPkgs.monad-logger) ]);
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.kubernetes-client-core)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.iso8601-time)
            (hsPkgs.mtl)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }