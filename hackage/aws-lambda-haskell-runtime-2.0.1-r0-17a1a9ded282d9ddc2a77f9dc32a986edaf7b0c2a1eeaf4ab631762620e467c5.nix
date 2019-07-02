{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "aws-lambda-haskell-runtime"; version = "2.0.1"; };
      license = "Apache-2.0";
      copyright = "2018 The Agile Monkeys SL";
      maintainer = "hackers@theagilemonkeys.com";
      author = "Nikita Tchayka";
      homepage = "https://github.com/theam/aws-lambda-haskell-runtime#readme";
      url = "";
      synopsis = "Haskell runtime for AWS Lambda";
      description = "Please see the README on GitHub at <https://github.com/theam/aws-lambda-haskell-runtime#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.safe-exceptions-checked)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          ];
        };
      tests = {
        "aws-lambda-haskell-runtime-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.hspec) ];
          };
        };
      };
    }