{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "aws-lambda-runtime"; version = "0"; };
      license = "Apache-2.0";
      copyright = "(c) 2018 Futurice, 2018 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/aws-lambda-haskell-runtime";
      url = "";
      synopsis = "Haskell on AWS Lambda Runtime API";
      description = "Make \"native\" Haskell AWS Lambda (using Runtime API).\n\n* \"AWS.Lambda.RuntimeAPI\" is for writing lambdas\n\n* \"AWS.Lambda.RuntimeAPI.Package\" is for packaging them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.base-compat)
          (hsPkgs.http-client)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.zip-archive)
          ];
        };
      exes = {
        "example-lambda" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aws-lambda-runtime)
            (hsPkgs.text)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            ];
          };
        };
      };
    }