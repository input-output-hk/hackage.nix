{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "aws-lambda-haskell-runtime"; version = "1.0.5"; };
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
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.microlens-platform)
          (hsPkgs.mtl)
          (hsPkgs.optparse-generic)
          (hsPkgs.process)
          (hsPkgs.relude)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.uuid)
          (hsPkgs.wreq)
          ];
        };
      exes = {
        "bootstrap" = {
          depends = [
            (hsPkgs.aws-lambda-haskell-runtime)
            (hsPkgs.base)
            (hsPkgs.relude)
            ];
          };
        };
      tests = {
        "aws-lambda-haskell-runtime-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.hspec) (hsPkgs.relude) ];
          };
        };
      };
    }