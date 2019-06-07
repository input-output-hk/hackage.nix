{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "wai-cors"; version = "0.2.7"; };
      license = "MIT";
      copyright = "(c) 2015-2019 Lars Kuhtz <lakuhtz@gmail.com>,\n(c) 2014 AlephCloud Systems, Inc.";
      maintainer = "Lars Kuhtz <lakuhtz@gmail.com>";
      author = "Lars Kuhtz <lakuhtz@gmail.com>";
      homepage = "https://github.com/larskuhtz/wai-cors";
      url = "";
      synopsis = "CORS for WAI";
      description = "This package provides an implemenation of\nCross-Origin resource sharing (CORS) for\n<http://hackage.haskell.org/package/wai Wai>\nthat aims to be compliant with <http://www.w3.org/TR/cors>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          ];
        };
      tests = {
        "phantomjs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.wai-cors)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.websockets)
            ];
          };
        "unit-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.http-types)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.wai)
            (hsPkgs.wai-cors)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.websockets)
            ];
          };
        };
      };
    }