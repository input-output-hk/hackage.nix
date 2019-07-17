{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gamgee"; version = "1.0.0"; };
      license = "MPL-2.0";
      copyright = "2018 Raghu Kaippully";
      maintainer = "rkaippully@gmail.com";
      author = "Raghu Kaippully";
      homepage = "https://github.com/rkaippully/gamgee#readme";
      url = "";
      synopsis = "Tool for generating TOTP MFA tokens.";
      description = "Tool for generating TOTP MFA tokens. Please see the README on GitHub at <https://github.com/rkaippully/gamgee#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.relude)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.text)
          (hsPkgs.memory)
          (hsPkgs.time)
          (hsPkgs.safe-exceptions)
          (hsPkgs.polysemy)
          (hsPkgs.polysemy-plugin)
          ];
        };
      exes = {
        "gamgee" = {
          depends = [
            (hsPkgs.gamgee)
            (hsPkgs.base)
            (hsPkgs.relude)
            (hsPkgs.optparse-applicative)
            (hsPkgs.polysemy)
            (hsPkgs.polysemy-plugin)
            (hsPkgs.safe-exceptions)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.aeson)
            (hsPkgs.unix)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.Hclip)
            ];
          };
        };
      tests = {
        "gamgee-test" = {
          depends = [
            (hsPkgs.gamgee)
            (hsPkgs.base)
            (hsPkgs.relude)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.memory)
            (hsPkgs.aeson)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.polysemy)
            (hsPkgs.polysemy-plugin)
            (hsPkgs.filepath)
            (hsPkgs.cryptonite)
            (hsPkgs.time)
            ];
          };
        };
      };
    }