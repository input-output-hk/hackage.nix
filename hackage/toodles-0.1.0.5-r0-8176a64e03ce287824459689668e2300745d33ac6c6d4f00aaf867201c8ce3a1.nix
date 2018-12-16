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
        name = "toodles";
        version = "0.1.0.5";
      };
      license = "MIT";
      copyright = "2018 Avi Press";
      maintainer = "mail@avi.press";
      author = "Avi Press";
      homepage = "https://github.com/aviaviavi/toodles#readme";
      url = "";
      synopsis = "Manage the TODO entries in your code";
      description = "See the README on GitHub at <https://github.com/aviaviavi/toodles#readme>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "toodles" = {
          depends = [
            (hsPkgs.MissingH)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-types)
            (hsPkgs.megaparsec)
            (hsPkgs.regex-posix)
            (hsPkgs.servant)
            (hsPkgs.servant-blaze)
            (hsPkgs.servant-server)
            (hsPkgs.strict)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }