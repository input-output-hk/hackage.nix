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
        name = "servant-ruby";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Hardy Jones";
      maintainer = "jones3.hardy@gmail.com";
      author = "Hardy Jones";
      homepage = "https://github.com/joneshf/servant-ruby#readme";
      url = "";
      synopsis = "Generate a Ruby client from a Servant API with Net::HTTP.";
      description = "Generate a Ruby client from a Servant API with Net::HTTP.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.casing)
          (hsPkgs.lens)
          (hsPkgs.servant-foreign)
          (hsPkgs.text)
        ];
      };
      tests = {
        "doc-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }