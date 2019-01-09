{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dataurl"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "http://github.com/agrafix/dataurl#readme";
      url = "";
      synopsis = "Handle data-urls";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.text)
          ];
        };
      tests = {
        "dataurl-test" = {
          depends = [
            (hsPkgs.dataurl)
            (hsPkgs.HTF)
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.text)
            ];
          };
        };
      };
    }