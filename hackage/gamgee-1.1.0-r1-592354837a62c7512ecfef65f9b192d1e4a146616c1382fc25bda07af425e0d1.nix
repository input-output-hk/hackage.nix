{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "gamgee"; version = "1.1.0"; };
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
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.polysemy)
          (hsPkgs.relude)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      exes = {
        "gamgee" = {
          depends = [
            (hsPkgs.Hclip)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.gamgee)
            (hsPkgs.optparse-applicative)
            (hsPkgs.polysemy)
            (hsPkgs.relude)
            (hsPkgs.safe-exceptions)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix)
            ];
          };
        };
      tests = {
        "gamgee-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.filepath)
            (hsPkgs.gamgee)
            (hsPkgs.memory)
            (hsPkgs.polysemy)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.relude)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      };
    }