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
      specVersion = "1.6";
      identifier = {
        name = "cabal-src";
        version = "0.2.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/yesodweb/cabal-src";
      url = "";
      synopsis = "Alternative install procedure to avoid the diamond dependency issue.";
      description = "Please see the README.md file on Github for more information: <https://github.com/yesodweb/cabal-src/blob/master/README.md>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal-src-install" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tar)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.filepath)
          ];
        };
        "mega-sdist" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.shelly)
            (hsPkgs.conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.http-types)
            (hsPkgs.transformers)
            (hsPkgs.tar)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.network)
            (hsPkgs.directory)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
          ];
        };
        "hackage-docs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.temporary)
            (hsPkgs.classy-prelude-conduit)
            (hsPkgs.Cabal)
            (hsPkgs.streaming-commons)
          ];
        };
      };
    };
  }