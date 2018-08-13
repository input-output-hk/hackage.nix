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
      specVersion = "1.20";
      identifier = {
        name = "sproxy-web";
        version = "0.3.1";
      };
      license = "MIT";
      copyright = "2014-2016, Zalora South East Asia Pte. Ltd";
      maintainer = "Igor Pashev <pashev.igor@gmail.com>";
      author = "Alp Mestanogullari <alpmestan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Web interface to sproxy database";
      description = "Web frontend for managing sproxy.\nSee https://hackage.haskell.org/package/sproxy";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sproxy-web" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.configurator)
            (hsPkgs.data-default-class)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hflags)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.postgresql-simple)
            (hsPkgs.resource-pool)
            (hsPkgs.scotty)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }