{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servius";
        version = "1.2.3.0";
      };
      license = "MIT";
      copyright = "2015-2018 Michael Snoyman";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/servius#readme";
      url = "";
      synopsis = "Warp web server with template rendering";
      description = "Please see README.md at https://www.stackage.org/package/servius";
      buildType = "Simple";
    };
    components = {
      exes = {
        "servius" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.cmark-gfm)
            (hsPkgs.http-types)
            (hsPkgs.shakespeare)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
          ];
        };
      };
    };
  }