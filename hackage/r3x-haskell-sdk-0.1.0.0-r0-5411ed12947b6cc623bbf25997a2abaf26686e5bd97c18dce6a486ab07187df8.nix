{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "r3x-haskell-sdk"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 RubiXFunctions";
      maintainer = "r3xfunctions@gmail.com";
      author = "RubiXFunctions";
      homepage = "https://github.com/rubixfunctions/r3x-haskell-sdk#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/rubixfunctions/r3x-haskell-sdk#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.cookie)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.regex-pcre)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.warp)
          ];
        };
      exes = {
        "r3x-haskell-sdk-exe" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.cookie)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.r3x-haskell-sdk)
            (hsPkgs.regex-pcre)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      tests = {
        "r3x-haskell-sdk-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.cookie)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.r3x-haskell-sdk)
            (hsPkgs.regex-pcre)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }