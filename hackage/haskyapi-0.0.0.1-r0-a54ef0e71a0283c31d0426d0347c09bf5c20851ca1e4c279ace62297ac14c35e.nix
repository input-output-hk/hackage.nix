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
        name = "haskyapi";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "2017 okue";
      maintainer = "example@example.com";
      author = "okue";
      homepage = "https://github.com/okue/haskyapi#readme";
      url = "";
      synopsis = "HTTP server";
      description = "Please see the README on Github at <https://github.com/okue/haskyapi#readme>";
      buildType = "Simple";
    };
    components = {
      "haskyapi" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.http-conduit)
          (hsPkgs.markdown)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.persistent)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.persistent-template)
          (hsPkgs.split)
          (hsPkgs.tagsoup)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "haskyapi" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.haskyapi)
            (hsPkgs.http-conduit)
            (hsPkgs.markdown)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-template)
            (hsPkgs.split)
            (hsPkgs.tagsoup)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.utf8-string)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.haskyapi)
            (hsPkgs.http-conduit)
            (hsPkgs.markdown)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-template)
            (hsPkgs.split)
            (hsPkgs.tagsoup)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }