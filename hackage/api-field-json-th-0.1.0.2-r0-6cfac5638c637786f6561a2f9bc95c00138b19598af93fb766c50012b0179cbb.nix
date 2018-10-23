{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "api-field-json-th";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Daishi Nakajima";
      maintainer = "nakaji.dayo@gmail.com";
      author = "Daishi Nakajima";
      homepage = "https://github.com/nakaji-dayo/api-field-json-th";
      url = "";
      synopsis = "option of aeson's deriveJSON";
      description = "Utils for using aeson's deriveJSON with lens's makeFields";
      buildType = "Simple";
    };
    components = {
      "api-field-json-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "api-field-json-th-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.api-field-json-th)
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }