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
        name = "curryer";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/curryer#readme";
      url = "";
      synopsis = "A simple HTTP server framework";
      description = "";
      buildType = "Simple";
    };
    components = {
      "curryer" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.cookie)
          (hsPkgs.mtl)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.case-insensitive)
          (hsPkgs.transformers)
          (hsPkgs.regex-pcre)
          (hsPkgs.blaze-html)
          (hsPkgs.aeson)
        ];
      };
    };
  }