{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "serial-test-generators"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Scott <scottmurphy09@gmail.com>";
      author = "Scott <scottmurphy09@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Test your 'Aeson' 'Serialize' and 'Binary' instances for stability over time";
      description = "When I am programming haskell I write a lot of\n@\ninstance ToJSON ... where\ninstance FromJSON ... where\ninstance Binary ... where\n@\nThese libraries are often associated with state.\nSo, I end up writing a lot of tests of the form ...\n>>> expect (encode someTestAeson) `toBe` \"{\\\"someSerializedThing\\\":\\\"expected encoding\\\"}\nso I have to write all these pieces down... but what I would really like is\n>>> runAesonSerializeTest someTestAeson outputfile.txt\nThat is what these libraries do for Serialize, Binary and Aeson\nThey make very little assumption about what version of the library you are using.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.system-fileio)
            ];
          };
        };
      };
    }