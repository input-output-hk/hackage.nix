{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-lambda"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2019 David Dal Busco and Nicolas Mattia";
      maintainer = "Nicolas Mattia <nicolas@nmattia.com>";
      author = "Nicolas Mattia <nicolas@nmattia.com>";
      homepage = "https://github.com/deckgo/wai-lambda#readme";
      url = "";
      synopsis = "Haskell Webapps on AWS Lambda";
      description = "\n![wai-lambda](https://github.com/deckgo/wai-lambda/raw/master/assets/wai-lambda-small.png)\n\nTurn any [wai](https://www.stackage.org/package/wai) webapp ( [spock](https://www.spock.li/), [servant](https://docs.servant.dev/en/stable/), etc) into a handler for AWS [Lambda](https://aws.amazon.com/lambda/) and [API Gateway](https://aws.amazon.com/api-gateway/) requests.\n\nWorks with any Lambda environment (nodejs, python, etc). Find out more in the [README](https://github.com/deckgo/wai-lambda#wai-lambda---haskell-webapps-on-aws-lambda).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.directory)
          (hsPkgs.http-types)
          (hsPkgs.iproute)
          (hsPkgs.network)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.unliftio)
          (hsPkgs.unordered-containers)
          (hsPkgs.vault)
          (hsPkgs.wai)
          ];
        };
      exes = {
        "wai-lambda" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.directory)
            (hsPkgs.http-types)
            (hsPkgs.iproute)
            (hsPkgs.network)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            (hsPkgs.vault)
            (hsPkgs.wai)
            (hsPkgs.wai-lambda)
            ];
          };
        };
      };
    }