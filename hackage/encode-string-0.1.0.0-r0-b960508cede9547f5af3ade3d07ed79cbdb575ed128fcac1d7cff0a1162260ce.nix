{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "encode-string"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Daniel Mendler";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>";
      homepage = "https://github.com/minad/encode-string#readme";
      url = "";
      synopsis = "Safe string conversion and encoding";
      description = "In modern Haskell many different string types\nare commonly used in combination with the 'OverloadedStrings' extension.\nThis small package provides means to convert safely between those.\nCurrently, 'String', lazy and strict 'Text', lazy and strict 'ByteString',\n'[Word8]' and 'ShortByteString' are supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.text) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.encode-string)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            ];
          };
        };
      };
    }