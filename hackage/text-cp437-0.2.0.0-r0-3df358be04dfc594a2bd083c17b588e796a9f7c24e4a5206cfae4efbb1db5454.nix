{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "text-cp437"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2017 Christopher Lord (Pliosoft), All Rights Reserved";
      maintainer = "christopher@pliosoft.com";
      author = "Christopher Lord";
      homepage = "https://github.com/pliosoft/text-cp437#readme";
      url = "";
      synopsis = "Conversion of Text to and from CP437";
      description = "Some devices such as receipt printers require\ntext encoded in CP437.\nThis library can help convert regular UTF\nsymbols to and from this format.\nSee <https://en.wikipedia.org/wiki/Code_page_437>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.text) ];
        };
      tests = {
        "text-cp437-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text-cp437)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.quickcheck-text)
            ];
          };
        };
      };
    }