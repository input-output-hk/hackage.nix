{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usekatip = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "now-haskell"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 - Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "";
      url = "";
      synopsis = "Zeit Now haskell-side integration and introspection tools.";
      description = "\nClient library for calling the AWS Lambda Runtime API API based on http-client.\n\nhost: localhost\n\nbase path: http://localhost/2018-06-01\n\nAWS Lambda Runtime API API version: 1.0.3\n\nOpenAPI version: 3.0.0\n";
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
          (hsPkgs.memory)
          (hsPkgs.wai)
          ] ++ (if flags.usekatip
          then [ (hsPkgs.katip) ]
          else [ (hsPkgs.monad-logger) ]);
        };
      exes = {
        "module-scanner" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.Cabal)
            (hsPkgs.ghc-lib-parser)
            (hsPkgs.yaml)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.stack)
            (hsPkgs.fused-effects)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.aws-lambda-runtime)
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