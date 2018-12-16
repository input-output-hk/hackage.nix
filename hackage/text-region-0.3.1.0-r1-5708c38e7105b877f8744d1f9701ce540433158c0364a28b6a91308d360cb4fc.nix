{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "text-region";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voidex@live.com";
      author = "Alexandr `Voidex` Ruchkin";
      homepage = "https://github.com/mvoidex/text-region";
      url = "";
      synopsis = "Marking text regions";
      description = "Provides functions to update text region positions according to text edit actions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.groups)
          (hsPkgs.lens)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.text-region)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.text)
          ];
        };
      };
    };
  }