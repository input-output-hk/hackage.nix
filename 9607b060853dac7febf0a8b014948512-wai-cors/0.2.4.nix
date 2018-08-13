{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      transformers-3 = false;
      wai-1 = false;
      wai-2 = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.14.0";
      identifier = {
        name = "wai-cors";
        version = "0.2.4";
      };
      license = "MIT";
      copyright = "(c) 2015 Lars Kuhtz <lakuhtz@gmail.com>,\n(c) 2014 AlephCloud Systems, Inc.";
      maintainer = "Lars Kuhtz <lakuhtz@gmail.com>";
      author = "Lars Kuhtz <lakuhtz@gmail.com>";
      homepage = "https://github.com/larskuhtz/wai-cors";
      url = "";
      synopsis = "CORS for WAI";
      description = "This package provides an implemenation of\nCross-Origin resource sharing (CORS) for\n<http://hackage.haskell.org/package/wai Wai>\nthat aims to be compliant with <http://www.w3.org/TR/cors>.";
      buildType = "Simple";
    };
    components = {
      "wai-cors" = {
        depends  = ((([
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.charset)
          (hsPkgs.http-types)
          (hsPkgs.parsers)
        ] ++ pkgs.lib.optionals (_flags.wai-1) [
          (hsPkgs.wai)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
        ]) ++ pkgs.lib.optional (_flags.wai-2) (hsPkgs.wai)) ++ pkgs.lib.optional (!_flags.wai-1 && !_flags.wai-2) (hsPkgs.wai)) ++ (if _flags.transformers-3
          then [
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
          ]
          else [
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.wai)
          ]);
      };
      tests = {
        "phantomjs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.wai-cors)
          ] ++ pkgs.lib.optionals (!(_flags.wai-1 || _flags.wai-2)) [
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.websockets)
          ];
        };
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.http-types)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.wai-cors)
          ] ++ pkgs.lib.optionals (!(_flags.wai-1 || _flags.wai-2)) [
            (hsPkgs.wai-extra)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.websockets)
          ];
        };
      };
    };
  }